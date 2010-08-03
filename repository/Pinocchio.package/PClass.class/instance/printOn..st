printing
printOn: aStream
	package printOn: aStream.
	aStream nextPut: $..
	aStream nextPutAll: name asSymbol