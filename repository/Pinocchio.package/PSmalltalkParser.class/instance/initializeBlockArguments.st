initialization
initializeBlockArguments
	^ super initializeBlockArguments
		semantics: [ :result |
			result collect: [ :variable | self createVariable: variable ]]