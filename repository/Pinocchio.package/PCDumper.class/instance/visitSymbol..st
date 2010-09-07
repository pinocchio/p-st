visitor
visitSymbol: aPSymbol
	self addGlobal: aPSymbol.
	self putRaw: aPSymbol with: [ :s| 
			s << 'new_Symbol(L"' << aPSymbol symbol cEscaped << '")'].
	^ aPSymbol.