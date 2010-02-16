selector
initializeBinaryMessageDefinition
	^ PEGParser
		named: 'BINARY-ARGUMENT'
		parsing: (self binarySelector & self parameterName)
		semantics: [:result |
			ASTBinaryMessageDefinition new
				selector: (self createSymbol: (result first));
				parameter: (self createVariable: (result at: 2))
		]