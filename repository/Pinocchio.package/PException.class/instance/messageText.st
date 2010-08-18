PharoIntegration
messageText
	<preventExport>
	| stream |
	stream := WriteStream on: ''.
	self warnOn: stream.
	^ stream contents