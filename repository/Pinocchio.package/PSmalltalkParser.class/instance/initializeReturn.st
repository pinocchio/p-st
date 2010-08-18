initialization
initializeReturn
	^ super initializeReturn
		semantics: [ :expression | ASTReturnExpression new expression: expression ]