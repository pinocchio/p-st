matching
parseOn: input
	| outputPosition result stack |
	stack := input stack.
	outputPosition := stack position.
	(expression parseOn: input) ifFalse: [ ^ false ].
	result := semantics value: (stack mark: outputPosition).
	stack zapTo: outputPosition + 1.
	stack poke: result.
	^ true