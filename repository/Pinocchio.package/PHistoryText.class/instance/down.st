navigating
down	
	lines atEnd ifFalse: [ ^ super down ].
	self historyNext.
	^ true