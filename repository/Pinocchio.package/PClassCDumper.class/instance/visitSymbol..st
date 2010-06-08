visitor
visitSymbol: aPSymbol
	self put: aPSymbol with: 'new_Symbol_cached(L"' , aPSymbol symbol asString cEscaped , '")'