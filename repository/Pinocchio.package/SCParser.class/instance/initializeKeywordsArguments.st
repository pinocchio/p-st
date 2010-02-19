expression
initializeKeywordsArguments
	| keywords parameters |
	^ PEGParser 
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: [ :pairs | 
			keywords := Array new: pairs size.
			parameters := Array new: pairs size.
			pairs withIndexDo: [ :each :index | 
				keywords at: index put: each first.
				parameters at: index put: (self createVariable: each second)
			].
			ASTKeywordMessageDefinition new
				keywords: keywords;
				parameters: parameters
		]