initialization
initializeFloatFormat
	^ super initializeFloatFormat
		semantics: [ :result |
			result removeFirst, result asString ]