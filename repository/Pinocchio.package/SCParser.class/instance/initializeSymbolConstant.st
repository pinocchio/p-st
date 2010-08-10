literal
initializeSymbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: ('#' asPEG omit) && self symbol
		semantics: [ :result | ASTSymbol new symbol: result ]