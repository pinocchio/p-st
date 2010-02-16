testing
includesKey: key
	self at: key ifAbsent: [ ^ false ].
	^ true