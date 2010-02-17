expression
initializeKeywordMessageExpression
	| keywords |
	^ PEGParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & (self binaryObjectDescription)) plus
		semantics: [ :parts |
			keywords := parts collect: #first.
			ASTMessageExpression new
				keywords: keywords;
				selector: (ASTKeywordSelector new
							keywords: keywords);
				arguments: (parts collect: #second)
		]