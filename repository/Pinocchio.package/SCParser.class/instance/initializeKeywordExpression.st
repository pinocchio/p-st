expression
initializeKeywordExpression
	^ PEGParser
		named: 'KEYWORD-EXPRESSION'
		parsing: (self binaryObjectDescription & self keywordMessageExpression)
		semantics: [ :parts |
			(parts at: 2) receiver: (parts first)
		]