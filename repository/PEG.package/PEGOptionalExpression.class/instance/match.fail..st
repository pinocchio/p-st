matching
match: input fail: block
	| position |
	position := input position.
	child match: input fail: [ input position: position ].