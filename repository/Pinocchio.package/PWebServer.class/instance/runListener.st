listening
runListener
	"Runs the server's listener loop. 
	Accepts incoming connections and handles them asynchronously"

	| connectionSocket |
	[[[listenerSocket isNotNil and:[listenerSocket isValid]] whileTrue:[
		"Waiting for five seconds means that WebServer will be
		back up after roughly five seconds when the system restarts."
		"DG: not sure if we need this wait time part"
		"connectionSocket := listenerSocket waitForAcceptFor: 5."
		connectionSocket := listenerSocket accept.
		"Fork this off since or else errors in acceptClient: kill the listener"
		connectionSocket ifNotNil:[self asyncHandleConnectionFrom: connectionSocket].
	]] ensure:[
		"Logging here is only for the purpose of catching sockets going randomly bad"
		self log: 'listener terminating, socket: ', (listenerSocket ifNotNil:[:s| s statusString]).

		"Try to restart the listener"
		(listenerSocket notNil and:[listenerSocket isValid not]) ifTrue:[
			listenerSocket destroy.
			listenerProcess := nil.
			"Wait a little before retrying"
			"DG: not sure if we need this wait time part"
			"(Delay forSeconds: 2) wait."
			^self listenOn: port interface: interface
		].
	]] on: PError do:[:ex| ex signal].
