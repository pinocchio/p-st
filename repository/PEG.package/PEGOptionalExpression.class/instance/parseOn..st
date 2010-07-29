matching
parseOn: input
	(child parseOn: input) ifFalse: [
		input stack push: PEGFailedOptionalResult.
		^ true ].
	input stack poke: (PEGSucceededOptionalResult on: (input stack peek)).
	^ true