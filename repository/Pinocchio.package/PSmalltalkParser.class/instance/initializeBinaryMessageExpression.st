initialization
initializeBinaryMessageExpression
	^ super initializeBinaryMessageExpression 
		semantics: [ :parts | 
			(ASTBinaryExpression new)
				selector: parts first;
				argument: (parts at: 2) ]