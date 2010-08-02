matching
match: input
	(self parseOn: input) ifFalse: [ ^ nil ].
	input stack isEmpty ifTrue: [ ^ true ].
	^ input stack pop