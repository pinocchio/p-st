expression
initializeKeywordExpression
	^ PEGMultiParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & (self keywordMessageExpression | self bracketIndexExpression)