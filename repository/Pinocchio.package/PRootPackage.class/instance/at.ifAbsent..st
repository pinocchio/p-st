accessing
at: index ifAbsent: block
	index should beKindOf: PSymbol.
	^ members at: index ifAbsent: block