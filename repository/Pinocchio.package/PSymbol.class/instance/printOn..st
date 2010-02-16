printing
printOn: aStream
	<preventExport>
	aStream nextPutAll: ' P'.
	self symbol printOn: aStream .