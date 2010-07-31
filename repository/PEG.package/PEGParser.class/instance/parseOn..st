matching
parseOn: input
	(expression parseOn: input) ifFalse: [ ^ false ].
	semantics ifNil: [ ^ true ].
	input stack poke: (semantics value: input stack peek).
	^ true