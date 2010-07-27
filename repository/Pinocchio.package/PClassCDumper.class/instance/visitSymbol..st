visitor
visitSymbol: aPSymbol
	self put: aPSymbol with: [ :s| 
			s << 'new_Symbol_cached(L"' << aPSymbol symbol asString cEscaped << '")'].