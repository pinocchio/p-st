matching
omitMatch: input
	| next charValue |
	next := input peek.
	next isNil ifTrue: [ ^ false ].
	char = next asInteger ifTrue: [ ^ false ].
	input forward.
	^ true