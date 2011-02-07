navigating
up
	self halt.
	(1 < self line) ifTrue: [ ^ super up ].
	self historyPrevious.
	^ true