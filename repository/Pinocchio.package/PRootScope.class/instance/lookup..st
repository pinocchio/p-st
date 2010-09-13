accessing
lookup: anASTVariable
	| result |
	declarations at: anASTVariable name ifPresent: [ :el | ^ el ].
	^ self class lookup: anASTVariable