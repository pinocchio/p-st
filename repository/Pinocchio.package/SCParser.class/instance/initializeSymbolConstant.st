literal
initializeSymbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: ('#' asPEG plus omit) && self symbol
		semantics: [ :result | ASTSymbol new symbol: result ]