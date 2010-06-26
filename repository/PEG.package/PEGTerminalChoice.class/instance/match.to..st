matching
match: input to: stream
	| char |
	char := input peek.
	(string includes: char) ifFalse: [ ^ false ].
	stream push: char.
	input forward.
	^ true