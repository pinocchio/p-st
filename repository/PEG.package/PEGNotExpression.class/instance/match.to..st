matching
match: input to: stream
	| position |
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		^ true ].
	^ false