matching
match: input to: stream
	| position outputPosition |
	position := input position.
	outputPosition := stream position.
	(child match: input to: stream) ifFalse: [
		input position: position.
		stream zapTo: outputPosition + 1.
		stream poke: PEGFailedOptionalResult.
		^ true ].
	stream poke: (PEGSucceededOptionalResult new: (stream peek)).
	^ true