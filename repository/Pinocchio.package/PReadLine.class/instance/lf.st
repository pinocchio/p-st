inserting
lf
	(client isReady: self contents)
		ifTrue: [ ^ self ready ].
	self openLine