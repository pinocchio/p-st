matching
match: input fail: block
	| position outputPosition |
	[ true ] whileTrue: [ skipWhitespace ifTrue: [ input skipWhitespace ].
	position := input position.
	child match: input fail: [
		input position: position.
		^ nil ] ].