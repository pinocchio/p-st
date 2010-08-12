printing
printOn: aStream
	super printOn: aStream.
	aStream << $ .
	self name printOn: aStream.
	aStream << $ .
	self scopeId printOn: aStream.
	aStream << $@.
	self localId printOn: aStream