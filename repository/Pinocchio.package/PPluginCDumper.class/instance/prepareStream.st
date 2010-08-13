sourceCreation
prepareStream
	| sourcePath |
	self assureExistenceOfPath: pluginPath.
	^ self openSourceStream.