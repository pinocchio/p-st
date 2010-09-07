initialization
initializeSymbolInArray
	^ super initializeSymbolInArray
		semantics: [ :symbol | ASTSymbol named: symbol ]