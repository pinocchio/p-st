matching
match: input to: stream fail: block
	| char |
	char := input peek.
	(string includes: char) ifFalse: [ block value. ^ nil ].
	stream push: char.
	input forward