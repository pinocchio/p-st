exporting
createStream: path
	"^ CrLfFileStream forceNewFileNamed: (self sourcePath, path)."
	^ StandardFileStream forceNewFileNamed: (self sourcePath, path).