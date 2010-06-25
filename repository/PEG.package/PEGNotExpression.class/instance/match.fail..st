matching
match: input fail: block
	| position |
	position := input position.
	child match: input fail: [
		input position: position.
		^ omit ifFalse: [ input atEnd ifTrue: [ block value. ^ nil ]. input forward ] ].
	block value