matching
parseOn: input
	| stack |
	stack := input stack.
	(expression parseOn: input) ifFalse: [ ^ false ].
	stack poke: (semantics value: stack peek).
	^ true