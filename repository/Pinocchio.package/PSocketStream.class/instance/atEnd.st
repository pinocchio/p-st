testing
atEnd
	"There is nothing more to read when
	there is no more data in our inBuffer, the socket
	is disconnected and there is none available on the socket.
	Note that we need to check isConnected before isDataAvailable,
	otherwise data may sneak in in the meantime. But we check the
	buffer first, because it is faster."

	self warn: 'SocketStream>>atEnd'.
	self isInBufferEmpty ifFalse: [^false].
	self warn: 'SocketStream>>atEnd: Buffer is Empty'.
	^self isConnected not
		and: [self isDataAvailable not]