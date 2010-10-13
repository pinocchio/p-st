*Pinocchio
printOn: aStream
	aStream << $(.
	x printOn: aStream.
	aStream << $@.
	y printOn: aStream.
	aStream << $)