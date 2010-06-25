expression
initializeKeywordsArguments
	| keywords parameters halfsize |
	^ PEGMultiParser
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: [ :parts | 
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			parameters := Array new: halfsize.
			1 to: halfsize do: [ :i |
				keywords at: i put: (parts at: i*2-1).
				parameters at: i put: (self createVariable: (parts at: i*2)) ].
			(ASTKeywordMessageDefinition new)
				keywords: keywords;
				parameters: parameters ]