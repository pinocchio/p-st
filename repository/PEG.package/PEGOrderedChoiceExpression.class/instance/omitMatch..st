matching
omitMatch: input
	| inputPosition |
	inputPosition := input position.
	((children at: 1) omitMatch: input) ifTrue: [ ^ true ].
	2 to: children size do: [ :index |
		input position: inputPosition.
		((children at: index) omitMatch: input) ifTrue: [ ^ true ] ].
	^ false