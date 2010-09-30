accessing
lookup: anASTVariable
	declarations at: anASTVariable name ifPresent: [ :el | ^ el ].
	^ self class lookup: anASTVariable