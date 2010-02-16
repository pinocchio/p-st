selector
initializeUnarySelector
	^ PEGParser
		named: 'UNARY-SELECTOR'
		parsing: (self identifier && (':' asPEG not consume: false))
		semantics: [ :selector |
			ASTUnarySelector new 
				selector: (self createSymbol: selector).
		]