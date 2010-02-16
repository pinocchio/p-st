accessing
lookup: anASTVariable
	^ decls at: anASTVariable name ifAbsent: [
		self parentScope lookup: anASTVariable
	].