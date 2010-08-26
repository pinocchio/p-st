ansi protocol
* operand
	"operand is a Number"
	
	^ self class seconds: ( (self asSeconds * operand) asInteger)