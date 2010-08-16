visitor
visitSymbol: aPSymbol
	self put: aPSymbol with: [ :s| 
			s << 'new_Symbol(L"' << aPSymbol symbol asString cEscaped << '")'].