testing
ifAtFirst: aBlock
	position = 1 ifFalse: [ ^ self ].
	aBlock value