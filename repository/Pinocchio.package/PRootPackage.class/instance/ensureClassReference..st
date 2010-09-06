exporting
ensureClassReference: aNameSymbol
	^ self at: aNameSymbol asSymbol ifAbsentPut: [ PClassReference in: self ]