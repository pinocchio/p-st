private
printOn: aStream
	"Print the receiver"
	self class name printOn: aStream.
	aStream << $(; << name; << $).