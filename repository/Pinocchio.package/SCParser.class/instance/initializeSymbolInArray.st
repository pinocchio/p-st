literal
initializeSymbolInArray
	^ PEGParser
		named: 'SYMBOL-IN-ARRAY'
		parsing: (self symbol)
		semantics: [:symbol |
			ASTSymbol new symbol: symbol
		]