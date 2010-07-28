sourceCreation
openSourceStream
	| streamPath |
	stream := NewlineStandardFileStream forceNewFileNamed: (pluginSourcePath, '.c').
	self writeAutoGenFileHeader.