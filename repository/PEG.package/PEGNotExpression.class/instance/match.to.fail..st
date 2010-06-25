matching
match: input to: stream fail: block
	| position |
	position := input position.
	child match: input fail: [
		input position: position.
		omit ifFalse: [
			input next ifNotNil: [ :n | stream push: n. ^ nil ].
			block value.
			^ nil ].
		^ nil ].
	block value