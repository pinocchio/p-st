printing
printString
	| stream |
	stream := WriteStream on: ''.
	self printOn: stream.
	^ stream contents