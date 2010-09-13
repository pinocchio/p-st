testing
isInBufferEmpty
	"Any data in the buffer?"
	self warn: 'SocketStream>>isInBufferEmpty:'.
	self warn: '-Last Read:'.
	self warn: lastRead.
	self warn: '-Index Next To Write:'.
	self warn: inNextToWrite .
 
	^lastRead + 1 = inNextToWrite