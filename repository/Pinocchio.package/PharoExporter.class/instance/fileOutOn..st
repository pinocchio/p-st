convenience
fileOutOn: aFileName
	| outputStream |
	outputStream := CrLfFileStream fileNamed: aFileName.
	cdumper printOn: outputStream.
	outputStream close.