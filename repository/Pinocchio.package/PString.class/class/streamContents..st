stream creation
streamContents: blockWithArg
	| stream |
	stream := WriteStream on: (self new: 100) .
	blockWithArg value: stream.
	^ stream contents