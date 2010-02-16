accessing
at: index put: value
	index should beKindOf: PSymbol.
	self haltIf: [ index printString = 'a PSymbol #PLocalVariable' ].
	members at: index put: value