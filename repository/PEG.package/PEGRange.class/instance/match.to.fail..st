matching
match: input to: stream fail: block
	| char |
	char := input peek.
	char ifNil: [ block value. ^ nil ].
	(char >= start and: [ char <= stop ])
		ifTrue: [ stream push: char. input forward. ^ self ].
	block value