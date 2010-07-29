matching
omitMatch: input
	| next charValue |
	next := input peek.
	next isNil ifTrue: [ ^ true ].
	char = next asInteger ifTrue: [ ^ false ].
	^ true