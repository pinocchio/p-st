initialization
initializeUnaryMessageExpression 
	^ super initializeUnaryMessageExpression 
		semantics: [ :selector | ASTUnaryExpression new selector: selector ]