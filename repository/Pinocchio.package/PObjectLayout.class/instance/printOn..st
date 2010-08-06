printing
printOn: aStream
	super printOn: aStream.
	aStream << ' size: '.
	self size printOn: aStream.
	aStream << ' values: #('.
	self do: [ :each | each printOn: aStream ].
	aStream << $)