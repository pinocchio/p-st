sourceCreation
openSourceStream
	| streamPath |
	stream := CrLfFileStream forceNewFileNamed: (pluginSourcePath, '.c').
	self writeAutoGenFileHeader.