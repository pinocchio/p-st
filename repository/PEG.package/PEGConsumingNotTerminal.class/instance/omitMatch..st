matching
omitMatch: input
	| next charValue |
	next := input next.
	next ifNil: [ ^ false ].
	char = next asInteger ifTrue: [ ^ false ].
	^ true