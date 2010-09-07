initialization
initializeBinaryMessageDefinition
	^ super initializeBinaryMessageDefinition
		semantics: [ :result | 
			(ASTBinaryMessageDefinition new)
				selector: result first;
				parameter: (self createVariable: (result at: 2)) ]