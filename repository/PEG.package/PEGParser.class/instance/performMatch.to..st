matching
performMatch: input to: stream
	| outputPosition inputPosition |
	inputPosition := input position.
	outputPosition := stream position.
	(expression match: input to: stream)
		ifFalse: [
			stream zapTo: outputPosition.
			input position: inputPosition.
			^ nil ].
	^ semantics value: stream pop.