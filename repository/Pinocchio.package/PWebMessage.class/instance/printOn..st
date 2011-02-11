printing
printOn: aStream
	"Prints the receiver"
	self class name printOn: aStream.
	aStream << $(.
	self writeOn: aStream.
	aStream << $).