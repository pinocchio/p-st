matching
match: input to: stack
	| outputPosition result |
	outputPosition := stack position.
	(expression match: input to: stack) ifFalse: [ ^ false ].
	result := semantics value: (stack mark: outputPosition).
	stack zapTo: outputPosition + 1.
	stack poke: result.
	^ true