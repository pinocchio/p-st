accessing
lookup: anASTVariable
	| result |
	decls at: anASTVariable name ifPresent: [ :el| ^ el ].
	^ self class lookup: anASTVariable.