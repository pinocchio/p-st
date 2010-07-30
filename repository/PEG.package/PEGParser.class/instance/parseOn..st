matching
parseOn: input
	(expression parseOn: input) ifFalse: [ ^ false ].
	input stack poke: (semantics value: input stack peek).
	^ true