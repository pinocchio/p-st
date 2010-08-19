initialization
initializeAnnotations
	^ super initializeAnnotations
		semantics: [ :result | result asArray ]