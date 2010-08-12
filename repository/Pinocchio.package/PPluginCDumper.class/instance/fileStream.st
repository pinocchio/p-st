sourceCreation
fileStream
	| sourcePath |
	self assureExistenceOfPath: pluginPath.
	^ self openSourceStream.