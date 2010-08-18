initialization
initializeSymbolInArray
	^ super initializeSymbolInArray
		semantics: [ :symbol | ASTSymbol new symbol: symbol ]