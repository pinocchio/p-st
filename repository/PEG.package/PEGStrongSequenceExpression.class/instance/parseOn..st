matching
parseOn: input
	| position outputPosition |
	position := input position.
	outputPosition := input stack position.
	1 to: children size do: [ :index |
		((children at: index) parseOn: input) ifFalse: [
			input position: position.
			input stack zapTo: outputPosition.
			^ false ] ].
	^ true