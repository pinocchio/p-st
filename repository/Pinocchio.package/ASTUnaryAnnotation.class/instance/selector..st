accessing
selector: anObject
	| sym |
	selector := anObject.
	sym := selector selectorSymbol.
	sym size > 1
		ifTrue: [ (sym at: sym size - 1) should not = ':' ]