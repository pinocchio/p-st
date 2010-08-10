exporting
createStream: path
	"^ CrLfFileStream forceNewFileNamed: (self sourcePath, path)."

	^ NewlineStandardFileStream forceNewFileNamed: self sourcePath , path