initialization
initializePrimaryVariable
	^ super initializePrimaryVariable
		semantics: [ :result | self createReference: result asArray ]