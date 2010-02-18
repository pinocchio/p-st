expression
initializeKeywordsArguments
	| result selector keywords parameters keypar |
	^ PEGParser 
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: [ :pairs | 
			result := ASTKeywordMessageDefinition new.
			keywords := Array new: pairs size.
			parameters := Array new: pairs size.
			1 to: pairs size do: [ :index | 
				keypar := pairs at: index.
				keywords at: index put: keypar first.
				parameters at: index put: (self createVariable: keypar second)
			].
			result keywords: keywords.
			result parameters: parameters.
			result 
		]