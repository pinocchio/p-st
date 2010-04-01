testing
= aClosure
	self species = aClosure species ifFalse: [ ^ false ].
	^ self code = aClosure code