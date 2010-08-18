initialization
initializeUnaryMessageDefinition
	^ super initializeUnaryMessageDefinition 
		semantics: [ :selector | ASTUnaryMessageDefinition new selector: selector ]