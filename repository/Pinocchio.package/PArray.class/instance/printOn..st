printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' #( '.
	self do: [:each|
		each printOn: aStream.
		aStream nextPutAll: ' '
	].
	aStream nextPutAll: ')'.