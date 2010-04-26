accessing
ifHasNext: aBlock
	position = self size ifFalse: [
		aBlock value: (self at: position + 1).
	].