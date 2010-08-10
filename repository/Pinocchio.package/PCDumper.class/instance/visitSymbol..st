visitor
visitSymbol: aPSymbol
	self addGlobal: aPSymbol.
	self putRaw: aPSymbol with: [ :s| 
			s << 'new_Symbol_cached(L"' << aPSymbol symbol asString cEscaped << '")'].
	^ aPSymbol.