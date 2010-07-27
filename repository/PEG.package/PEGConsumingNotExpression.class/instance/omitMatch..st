matching
omitMatch: input
	| position |
	input atEnd ifTrue: [ ^ false ].
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position + 1.
		^ true ].
	^ false