matching
match: input
	^ (string includes: input peek)
		ifTrue: [ input next asString ]
		ifFalse: [ nil ]