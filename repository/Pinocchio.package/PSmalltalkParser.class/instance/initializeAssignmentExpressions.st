initialization
initializeAssignmentExpressions
	^ super initializeAssignmentExpressions
		semantics: [ :result | result asArray ]