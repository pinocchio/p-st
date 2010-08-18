expression
initializeBinaryMessageExpression
	^ PEGMultiParser
		named: 'BINARY-MESSAGE-EXPRESSION'
		parsing: self binarySelector & self unaryObjectDescription