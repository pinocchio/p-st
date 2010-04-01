testing
ifAtEnd: aBlock
	position = self size ifFalse: [ ^ self ].
	aBlock value