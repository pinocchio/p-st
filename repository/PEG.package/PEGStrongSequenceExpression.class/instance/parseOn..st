matching
parseOn: input
	| position outputPosition |
	outputPosition := input stack position.
	position := input position.
	((children at: 1) parseOn: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index |
		((children at: index) parseOn: input) ifFalse: [
			input position: position.
			input stack zapTo: outputPosition.
			^ false ] ].
	^ true