matching
performMatch: input to: stream
	| outputPosition inputPosition |
	inputPosition := input position.
	outputPosition := stream position.
	expression match: input to: stream fail: [
		stream zapTo: outputPosition.
		input position: inputPosition.
		^ nil ].
	" todo optimize "
	(stream position - outputPosition) should be: 1.
	^ semantics value: stream pop.