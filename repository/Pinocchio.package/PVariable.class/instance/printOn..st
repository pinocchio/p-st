printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' '.
	self name printOn: aStream.
	aStream nextPutAll: ' '.
	self scopeId printOn: aStream.
	aStream nextPutAll: '@'.
	self localId printOn: aStream.