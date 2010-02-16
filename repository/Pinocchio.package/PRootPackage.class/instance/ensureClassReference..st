exporting
ensureClassReference: aNameSymbol
	self haltIf: [(aNameSymbol isKindOf: PSymbol) not ].
	^ self at: aNameSymbol ifAbsentPut: [ PClassReference named: aNameSymbol in: self ].