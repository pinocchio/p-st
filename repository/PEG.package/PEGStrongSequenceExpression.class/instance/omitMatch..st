matching
omitMatch: input
	| position |
	position := input position.
	1 to: children size do: [ :index |
		((children at: index) omitMatch: input) ifFalse: [
			 input position: position.
			^ false ]].
	^ true