initialization
initializeBinarySelector
	^ super initializeBinarySelector
		semantics: [ :result | self createSymbol: result asString ]