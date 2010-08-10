printing
printOn: aStream
	aStream << 'Constant('.
	constant printOn: aStream.
	aStream << $)