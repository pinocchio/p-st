running
performCustomSelector: prefix
	| customSelector |
	customSelector := (prefix, self selector capitalized) asSymbol.
	(target respondsTo: customSelector) ifTrue: [ 
		target perform: customSelector].