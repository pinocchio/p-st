selector
initializeUnaryMessageDefinition
	^ PEGParser
		named: 'UNARY-MESSAGE-DEFINITION'
		parsing: self unarySelector