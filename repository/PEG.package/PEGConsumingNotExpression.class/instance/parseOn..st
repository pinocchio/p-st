matching
parseOn: input
	| position stack |
	stack := input stack.
	input atEnd ifTrue: [ ^ false ].
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		stack push: input next.
		^ true ].
	^ false