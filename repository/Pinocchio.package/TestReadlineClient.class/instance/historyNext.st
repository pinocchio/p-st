as yet unclassified
historyNext
	history isEmpty ifTrue: [ ^ nil].
	history next.
	^ history value.