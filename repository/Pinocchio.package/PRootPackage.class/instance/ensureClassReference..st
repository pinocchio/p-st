exporting
ensureClassReference: aNameSymbol
	^ self at: aNameSymbol ifAbsentPut: [ PClassReference in: self ]