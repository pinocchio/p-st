expression
initializeBracketAssignExpression
	| keywords arguments |
	^ PEGParser
		named: 'BRACKET-MESSAGE-EXPRESSION'
		parsing: (('[' asPEG omit: true) & self binaryObjectDescription & (']' asPEG omit: true) & (':=' asPEG omit: true) & self binaryObjectDescription )
		semantics: [ :parts | 
			keywords := Array with: #at with: #put.
			arguments := parts asArray.
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]