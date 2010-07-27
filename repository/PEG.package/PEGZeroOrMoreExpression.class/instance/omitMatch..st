matching
omitMatch: input
	| position |
	[ input skipWhitespace.
	position := input position.
	child omitMatch: input ] whileTrue.
	input position: position.
	^ true