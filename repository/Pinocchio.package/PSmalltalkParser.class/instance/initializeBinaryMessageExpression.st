initialization
initializeBinaryMessageExpression
	^ super initializeBinaryMessageExpression 
		semantics: [ :parts | 
			(ASTBinaryExpression new)
				selector: (self createSymbol: parts first);
				argument: (parts at: 2) ]