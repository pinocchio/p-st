printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' size: '.
	self size printOn: aStream.
	aStream nextPutAll: ' values: #('.
	self do: [ :each|
		each printOn: aStream.
	].
	aStream nextPutAll: ')'.
	