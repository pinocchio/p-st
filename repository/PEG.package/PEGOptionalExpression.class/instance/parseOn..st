matching
parseOn: input
	| position outputPosition stack |
	position := input position.
	stack := input stack.
	outputPosition := stack position.
	(child parseOn: input) ifFalse: [
		input position: position.
		stack zapTo: outputPosition + 1.
		stack poke: PEGFailedOptionalResult.
		^ true ].
	stack poke: (PEGSucceededOptionalResult new: (stack peek)).
	^ true