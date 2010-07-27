matching
parseOn: input
	| position outputPosition stack |
	stack := input stack.
	[ input skipWhitespace.
	position := input position.
	outputPosition := stack position.
	child parseOn: input ] whileTrue.
	input position: position.
	stack zapTo: outputPosition.
	^ true