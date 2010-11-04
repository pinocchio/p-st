as yet unclassified
historyNext
	history atEnd ifTrue: [ ^ self ].
	self historyPush.
	history next.
	self historyRestore.
	