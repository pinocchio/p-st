writing
nextPutAll: aString
	"Dont check for file permissions."
	self primWrite: fileID from: aString startingAt: 1 count: aString basicSize.
	^ aString
