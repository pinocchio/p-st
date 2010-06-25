matching
match: input fail: block
	| char |
	char := input peek.
	(string includes: char) ifFalse: [ block value. ^ nil ].
	input forward