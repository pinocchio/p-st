initialization
initializeBinarySelector
	^ super initializeBinarySelector
		semantics: [ :result | result asSymbol ]