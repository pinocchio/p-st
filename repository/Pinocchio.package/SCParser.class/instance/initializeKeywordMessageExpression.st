expression
initializeKeywordMessageExpression
	| keywords arguments halfsize |
	^ PEGMultiParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & self binaryObjectDescription) plus
		semantics: [ :parts | 
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			arguments := Array new: halfsize.
			1 to: halfsize do: [ :i |
				keywords at: i put: (parts at: i * 2 - 1).
				arguments at: i put: (parts at: i * 2) ].
			(ASTMessageExpression new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]