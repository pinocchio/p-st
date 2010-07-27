matching
parseOn: input
	| inputPosition outputPosition stack |
	stack := input stack.
	inputPosition := input position.
	outputPosition := stack position.
	((children at: 1) parseOn: input) ifTrue: [ ^ true ].
	2 to: children size do: [ :index |
		input position: inputPosition.
		stack zapTo: outputPosition.
		((children at: index) parseOn: input) ifTrue: [ ^ true ] ].
	^ false