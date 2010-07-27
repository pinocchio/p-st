matching
parseOn: input
	| position |
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		^ true ].
	^ false