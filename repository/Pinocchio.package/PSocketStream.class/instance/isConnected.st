testing
isConnected
	"The stream is connected if the socket is."
	
	self warn: 'SocketStream>>isConnected'.

	^socket isConnected