matching
match: input
	(self parseOn: input) ifFalse: [ input parsingFailed ].
	input stack isEmpty ifTrue: [ ^ true ].
	^ input stack pop