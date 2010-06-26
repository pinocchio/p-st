matching
omitMatch: input
	| position |
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		omit ifFalse: [
			input atEnd ifTrue: [ ^ false ].
			input forward ].
		^ true ].
	^ false