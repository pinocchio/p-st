expression
initializeBracketReadExpression
	| keywords arguments |
	^ PEGParser
		named: 'BRACKET-MESSAGE-EXPRESSION'
		parsing: (('[' asPEG omit: true) & self binaryObjectDescription & (']' asPEG omit: true))
		semantics: [ :part | 
			keywords := Array with: #at.
			arguments := Array with: part.
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]