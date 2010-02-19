exporting
ensureClassReference: aNameSymbol
	^ self at: aNameSymbol ifAbsentPut: [ PClassReference named: aNameSymbol in: self ].