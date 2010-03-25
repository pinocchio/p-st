accessing
selector: anObject
	| sym |
	selector := anObject.
	sym := selector asSymbol.
	sym size > 1
		ifTrue: [ (sym at: sym size - 1) should not = ':' ]