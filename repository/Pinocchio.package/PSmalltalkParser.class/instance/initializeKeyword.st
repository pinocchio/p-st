initialization
initializeKeyword
	^ super initializeKeyword
		semantics: [ :result | result add: $:. result asString ]