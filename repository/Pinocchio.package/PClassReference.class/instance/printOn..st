printing
printOn: aStream
	super printOn: aStream.
	pClass ifNotNil: [
		aStream << ' ('.
		aStream << pClass name.
		aStream << $) ]