stream creation
streamContents: blockWithArg
	<preventExport>
	| stream |
	stream := (self new: 100) writeStream.
	blockWithArg value: stream.
	^ stream contents