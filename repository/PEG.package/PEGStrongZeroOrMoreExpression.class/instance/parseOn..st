matching
parseOn: input
	| position outputPosition stack |
	stack := input stack.
	[ position := input position.
	outputPosition := stack position.
	(child parseOn: input) ] whileTrue.
	input position: position.
	stack zapTo: outputPosition.
	^ true.