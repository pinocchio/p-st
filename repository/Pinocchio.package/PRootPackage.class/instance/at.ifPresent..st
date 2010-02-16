accessing
at: index ifPresent: block
	index should beKindOf: PSymbol.
	^ members at: index ifPresent: block