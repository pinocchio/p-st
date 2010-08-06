printing
printString
	| stream |
	stream := WriteStream on: (String new: 1024).
	self printOn: stream.
	^ stream contents