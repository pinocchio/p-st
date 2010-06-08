visitor
visitSymbol: aPSymbol
	globals add: aPSymbol.
	self putRaw: aPSymbol with: 'new_Symbol_cached(L"' , aPSymbol symbol asString cEscaped , '")'