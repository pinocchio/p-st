matching
match: input to: stream fail: block
	| position outputPosition |
	position := input position.
	outputPosition := stream position.
	child match: input to: stream fail: [
		input position: position.
		stream zapTo: outputPosition.
		^ stream push: PEGFailedOptionalResult ].
	(stream position - outputPosition) should = 1.
	stream push: (PEGSucceededOptionalResult new: (stream pop))