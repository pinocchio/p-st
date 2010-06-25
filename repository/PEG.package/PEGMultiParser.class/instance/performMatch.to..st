matching
performMatch: input to: stream
	| outputPosition inputPosition result |
	inputPosition := input position.
	outputPosition := stream position.
	expression match: input to: stream fail: [
		stream zapTo: outputPosition.
		input position: inputPosition.
		^ nil ].
	" todo optimize "
	result := semantics value: (stream mark: outputPosition).
	stream zapTo: outputPosition.
	^ result