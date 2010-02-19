exporting
ensureClassReference: aNameSymbol
	^ self at: aNameSymbol asSymbol ifAbsentPut: [ PClassReference named: aNameSymbol asSymbol in: self ].