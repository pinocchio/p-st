visitor
visitSymbol: aPSymbol
	globals add: aPSymbol.
	self putRaw: aPSymbol with: [ :s| 
			s << 'new_Symbol_cached(L"' << aPSymbol symbol asString cEscaped << '")'].
	^ aPSymbol.