matching
parseOn: input
	| next charValue |
	next := input next.
	next ifNil: [ ^ false ].
	char = next asInteger ifTrue: [ ^ false ].
	input stack push: next.
	^ true