expression
initializeUnaryExpression
	^ PEGMultiParser
		named: 'UNARY-EXPRESSION'
		parsing: self primary & self unarySelector plus