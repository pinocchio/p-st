initialization
initializeIdentifier
	^ super initializeIdentifier
		semantics: [ :result | result asString ]