inserting
lf
	self isReady ifTrue: [ ^ self ready ].
	self openLine