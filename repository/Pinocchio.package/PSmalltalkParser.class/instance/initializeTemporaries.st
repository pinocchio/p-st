initialization
initializeTemporaries 
	^ super initializeTemporaries
		semantics: [ :result | result asArray ]