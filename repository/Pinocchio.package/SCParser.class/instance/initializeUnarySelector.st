selector
initializeUnarySelector
	^ PEGParser
		named: 'UNARY-SELECTOR'
		parsing: self identifier && (':' asPEG not)
		semantics: [ :selector | ASTUnarySelector new selector: (self createSymbol: selector) ]