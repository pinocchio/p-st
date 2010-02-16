stream creation
streamContents: blockWithArg
	| stream |
	stream := (self new: 100) writeStream.
	blockWithArg value: stream.
	^stream contents