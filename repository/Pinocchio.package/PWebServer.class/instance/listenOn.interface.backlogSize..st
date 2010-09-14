listening
listenOn: aPort interface: anInterface backlogSize: backlog
	"Starts the server listening on the given port / network interface"
	
	| ipString |
	interface := anInterface.
	port := aPort.
	ipString := interface ifNil:['*'] ifNotNil:[ interface asString
		"String streamContents:[:s| interface do:[:b| s print: b] separatedBy:[s nextPut:$.]]"].
	self log: 'Listener starting (interface: ', ipString, ' port: ', port, ')'.
	listenerSocket := PSocket newTCP.
	interface 
		ifNil:[listenerSocket listenOn: port backlogSize: backlog]
		ifNotNil:[listenerSocket listenOn: port backlogSize: backlog interface: interface].
	"DG: somehow our socket is not doing this correctly."
	"listenerSocket isWaitingForConnection ifFalse:[
		self error: 'Failed to listen (interface: ', interface, ' port: ', aPort,')'.
	]."
	self startListener.