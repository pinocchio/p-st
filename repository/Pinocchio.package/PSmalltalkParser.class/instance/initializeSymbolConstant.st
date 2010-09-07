initialization
initializeSymbolConstant
	^ super initializeSymbolConstant
		semantics: [ :result | ASTSymbol named: result ]