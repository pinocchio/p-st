matching
match: input to: stream
	| position |
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		omit ifFalse: [
			input atEnd ifTrue: [ ^ false ].
			stream push: input next ].
		^ true ].
	^ false