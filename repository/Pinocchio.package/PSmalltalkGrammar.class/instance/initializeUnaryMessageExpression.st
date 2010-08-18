expression
initializeUnaryMessageExpression
	^ PEGParser
		named: 'UNARY-MESSAGE-EXPRESSION'
		parsing: self unarySelector