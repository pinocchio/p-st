matching
omitMatch: input
	| position |
	position := input position.
	((children at: 1) omitMatch: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index |
		((children at: index) omitMatch: input) ifFalse: [
			 input position: position.
			^ false ]].
	^ true