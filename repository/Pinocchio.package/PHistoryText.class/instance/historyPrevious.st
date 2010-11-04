as yet unclassified
historyPrevious
	history atStart ifTrue: [ ^ self ].
	self historyPush.
	history previous.
	self historyRestore.
	