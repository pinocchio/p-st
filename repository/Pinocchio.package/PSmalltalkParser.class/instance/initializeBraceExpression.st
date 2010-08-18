initialization
initializeBraceExpression
	^ super initializeBraceExpression
		semantics: [ :result | 
			ASTBraceExpression new
				expressions: result asArray ]