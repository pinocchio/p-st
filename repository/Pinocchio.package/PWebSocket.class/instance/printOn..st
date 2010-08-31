private
printOn: aStream
	"Print the receiver"

	aStream << self class name.
	aStream << $( << name << $).