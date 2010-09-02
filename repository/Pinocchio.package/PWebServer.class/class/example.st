example
example	"WebSocket example"

	"This is a very simple WebSocket example implementing a basic chat system.
	Each message sent by a client connection is broadcast to everyone."

	| mutex sockets |
	mutex := PMutex new.
	sockets := OrderedCollection new.
	PWebServer reset default listenOn: 8080.

	PWebServer default addService: '/' action:[:req|
		"Serves the main html chat page"
		req send200Response: self examplePage contentType: 'text/html'.
	].

	PWebServer default addService: '/broadcast' action:[:req| | ws |
		"Implements the WebSocket broadcaster"
		ws := req asWebSocket.
		ws timeout: 300. "5 minutes timeout"
	
		PFile stdout lf; writeAll: 'New ', ws.

		ws onMessage:[:data|
			mutex critical:[sockets do:[:s| s send: data]].
		].
		ws onClose:[
			PFile stdout lf; writeAll: 'Closing ', ws.
			mutex critical:[sockets remove: ws ifAbsent:[]].
		].
		ws onError:[:ex|
			PFile stdout lf; writeAll: ws.
			PFile stdout lf; writeAll: ex description.
			PFile stdout lf; writeAll: ex signalerContext longStack.
		].
		mutex critical:[sockets add: ws].

		"We don't need to #fork here, in fact we shouldn't since it ensures
		that shutting down WebServer shuts down any WebSockets, too."
		ws run.
	].