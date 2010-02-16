selector
initializeKeywordsArguments
	| result |
	^ PEGParser 
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: [ :pairs | 
			result := ASTKeywordMessageDefinition new.
			pairs do: [ :pair | 
				result keywords add: pair first.
				result parameters add: (self createVariable: (pair at: 2))
			].
			result selector:  (ASTSymbol named: result selectorName).
			result 
		]