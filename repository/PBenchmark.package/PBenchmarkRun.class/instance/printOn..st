printing
printOn: aStream
	self inspectLabelOn: aStream.
	aStream << ' '.
	^ super printOn: aStream.