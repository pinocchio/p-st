matching
parseOn: input
	| next charValue |
	next := input peek.
	next ifNil: [ ^ true ].
	char = next asInteger ifTrue: [ ^ false ].
	^ true