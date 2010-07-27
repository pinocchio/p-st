matching
match: input to: stream
	| inputPosition outputPosition |
	inputPosition := input position.
	outputPosition := stream position.
	((children at: 1) match: input to: stream) ifTrue: [ ^ true ].
	2 to: children size do: [ :index |
		input position: inputPosition.
		stream zapTo: outputPosition.
		((children at: index) match: input to: stream) ifTrue: [ ^ true ] ].
	^ false