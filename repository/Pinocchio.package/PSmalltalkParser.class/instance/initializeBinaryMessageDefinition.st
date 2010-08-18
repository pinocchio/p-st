initialization
initializeBinaryMessageDefinition
	^ super initializeBinaryMessageDefinition
		semantics: [ :result | 
			(ASTBinaryMessageDefinition new)
				selector: (self createSymbol: result first);
				parameter: (self createVariable: (result at: 2)) ]