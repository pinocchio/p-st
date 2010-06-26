matching
omitMatch: input
	| position outputPosition |
	[ true ] whileTrue: [ skipWhitespace ifTrue: [ input skipWhitespace ].
	position := input position.
	(child omitMatch: input) ifFalse: [
		input position: position.
		^ true ] ]