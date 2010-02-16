expression
initializeBinaryMessageExpression
	^ PEGParser
		named: 'BINARY-MESSAGE-EXPRESSION'
		parsing: (self binarySelector & (self unaryObjectDescription))
		semantics: [ :parts |
			ASTBinaryExpression new
				selector: (self createSymbol: (parts first));
				argument: (parts at: 2)
		]