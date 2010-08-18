initialization
initializeNumberFormat
	^ super initializeNumberFormat
		semantics: [ :result | result asString ]