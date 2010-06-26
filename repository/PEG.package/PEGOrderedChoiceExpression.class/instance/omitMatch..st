matching
omitMatch: input
	| inputPosition |
	inputPosition := input position.
	children do: [ :child |
		(child omitMatch: input) ifTrue: [ ^ true ].
		input position: inputPosition ].
	^ false