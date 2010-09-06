printing
printOn: aStream
	self inspectLabelOn: aStream.
	aStream nextPut: $ .
	^ super printOn: aStream.