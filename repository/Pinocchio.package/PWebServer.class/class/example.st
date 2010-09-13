example
example	"Simple static html example"

	| mutex sockets |
	mutex := Mutex new.
	sockets := OrderedCollection new.
	PWebServer reset default listenOn: 8080.

	PWebServer default addService: '/' action:[:req|
		"Serves the main html chat page"
		req send200Response: self examplePage contentType: 'text/html'.
	].
