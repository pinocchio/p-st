accessing
at: index ifAbsentPut: block
	index should beKindOf: PSymbol.
	self haltIf: [ index printString = 'a PSymbol #PLocalVariable' ].
	^ members at: index ifAbsentPut: block