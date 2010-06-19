expression
initializeKeywordExpression
	^ PEGParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & ( self keywordMessageExpression | self bracketExpression)
		semantics: [ :parts | (parts at: 2) receiver: parts first ]