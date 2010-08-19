printing
printOn: aStream
	aStream << 'PEGStringScanner('.
	collection printOn: aStream.
	aStream << $)