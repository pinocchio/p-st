accessing
ifNotNil: aBlock
	^ aBlock valueWithPossibleArgs: (Array with: self)