expression
initializeKeywordsArguments
	| result selector |
	^ PEGParser 
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus
		semantics: [ :pairs | 
			result := ASTKeywordMessageDefinition new.
			selector := ''.
			pairs do: [ :pair | 
				selector := selector, pair first, ':'.
				result parameters add: (self createVariable: (pair at: 2))
			].
			result selector: (ASTSymbol named: selector).
			result 
		]