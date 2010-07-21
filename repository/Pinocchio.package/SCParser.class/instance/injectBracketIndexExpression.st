expression
injectBracketIndexExpression
	| keywords arguments |
	^ PEGParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: ('[' asPEG omit: true) & self expression & (']' asPEG omit: true)
		semantics: [ :parts |
			keywords := Array with: #at.
			arguments := parts asArray.
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]