matching
match: input to: stream
	| position outputPosition |
	[ input skipWhitespace.
	position := input position.
	outputPosition := stream position.
	child match: input to: stream ] whileTrue.
	input position: position.
	stream zapTo: outputPosition.
	^ true