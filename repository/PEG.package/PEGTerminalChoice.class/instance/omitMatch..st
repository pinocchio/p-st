matching
omitMatch: input
	^ (string includes: input peek)
		ifTrue: [ input forward. true ]
		ifFalse: [ nil ]