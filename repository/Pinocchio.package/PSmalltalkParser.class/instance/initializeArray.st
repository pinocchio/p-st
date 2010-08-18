initialization
initializeArray
	^ super initializeArray
		semantics: [ :result |
			ASTArray new literals: result asArray ]