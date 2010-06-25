matching
match: input fail: block
	| char |
	char := input peek.
	char ifNil: [ block value. ^ nil ].
	(char >= start and: [ char <= stop ])
		ifTrue: [ input forward. ^ self ].
	block value