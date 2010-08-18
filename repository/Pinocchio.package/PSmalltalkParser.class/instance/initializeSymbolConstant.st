initialization
initializeSymbolConstant
	^ super initializeSymbolConstant
		semantics: [ :result | ASTSymbol new symbol: result ]