matching
parseOn: input
	| next charValue |
	next := input peek.
	next isNil ifTrue: [ ^ false ].
	char = next asInteger ifTrue: [ ^ false ].
	input stack push: next.
	input forward.
	^ true