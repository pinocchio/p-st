initialization
initializeVariableName
	^ super initializeVariableName
		semantics: [ :result | self createVariable: result ]