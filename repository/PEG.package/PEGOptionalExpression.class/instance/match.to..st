matching
match: input to: stream
	| position outputPosition |
	position := input position.
	outputPosition := stream position.
	(child match: input to: stream) ifFalse: [
		input position: position.
		stream zapTo: outputPosition.
		stream push: PEGFailedOptionalResult.
		^ true ].
	(stream position - outputPosition) should = 1.
	stream poke: (PEGSucceededOptionalResult new: (stream peek)).
	^ true