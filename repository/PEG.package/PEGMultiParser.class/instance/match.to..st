matching
match: input to: stream
	| outputPosition inputPosition result |
	inputPosition := input position.
	outputPosition := stream position.
	(expression match: input to: stream) ifFalse: [ ^ false ].
	result := semantics value: (stream mark: outputPosition).
	stream zapTo: outputPosition + 1.
	stream poke: result.
	^ true