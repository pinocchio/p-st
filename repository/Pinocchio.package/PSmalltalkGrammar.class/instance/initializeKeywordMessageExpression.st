expression
initializeKeywordMessageExpression
	^ PEGMultiParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & self binaryObjectDescription) plus