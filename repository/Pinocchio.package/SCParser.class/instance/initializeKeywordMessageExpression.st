expression
initializeKeywordMessageExpression
	| keywords arguments |
	^ PEGParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & self binaryObjectDescription) plus
		semantics: [ :parts | 
			keywords := Array new: parts size.
			arguments := Array new: parts size.
			parts withIndexDo: [ :p :i | 
				keywords at: i put: p first.
				arguments at: i put: p second ].
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]