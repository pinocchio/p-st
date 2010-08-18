initialization
initializeUnarySelector
	^ super initializeUnarySelector
		semantics: [ :selector |
			ASTUnarySelector new selector: (self createSymbol: selector) ]