expression
initializeBinaryExpression
	
	self preStoreBinaryObjectDescription.
	
	parsers at: #binaryExpression ifAbsentPut: (
	PEGParser
		named: 'BINARY-EXPRESSION'
		parsing: (self unaryObjectDescription & self binarySelector <& self binaryObjectDescription)
		semantics: [:parts |
			(parts at: 3)
				argumentOfBinary: (ASTBinaryExpression new
					receiver: (parts first);
					selector: (ASTBinarySelector new selector: (self createSymbol: (parts at: 2))))
		]
	).
	
	self injectBinaryObjectDescription.
	
	^ self binaryExpression