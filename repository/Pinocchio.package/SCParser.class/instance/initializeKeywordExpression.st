expression
initializeKeywordExpression
	^ PEGParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & (self keywordMessageExpression | self bracketIndexExpression)
		semantics: [ :parts | (parts at: 2) receiver: parts first ]