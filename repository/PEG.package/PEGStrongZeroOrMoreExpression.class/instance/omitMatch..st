matching
omitMatch: input
	| position outputPosition |
	[ position := input position.
	child omitMatch: input ] whileTrue.
	input position: position.
	^ true