matching
privateMatch: input
	| char |
	char := input next.
	^ (string includes: char)
		ifTrue: [ char asString ]
		ifFalse: [ nil ]