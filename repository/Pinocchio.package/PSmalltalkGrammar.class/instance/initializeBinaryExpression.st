expression
initializeBinaryExpression
	self preStoreBinaryObjectDescription.
	parsers at: #binaryExpression ifAbsentPut:
		(PEGMultiParser
			named: 'BINARY-EXPRESSION'
			parsing: (self unaryObjectDescription & self binarySelector) plus & self unaryObjectDescription).
	self injectBinaryObjectDescription.
	^ self binaryExpression