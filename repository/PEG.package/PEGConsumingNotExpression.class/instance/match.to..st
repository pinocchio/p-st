matching
match: input to: stream
	| position |
	input atEnd ifTrue: [ ^ false ].
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		stream push: input next.
		^ true ].
	^ false