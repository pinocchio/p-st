matching
parseOn: input
	| position outputPosition |
	position := input position.
	outputPosition := input stack position.
	((children at: 1) parseOn: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index | 
		input skipWhitespace.
		((children at: index) parseOn: input)
			ifFalse: [
				input position: position.
				input stack zapTo: outputPosition.
				^ false ] ].
	^ true