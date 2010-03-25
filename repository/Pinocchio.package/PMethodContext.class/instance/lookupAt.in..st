interpreting
lookupAt: local in: scope
	scope = scopeId
		ifFalse: [ self error: 'Invalid scope identifier' ].
	^ self at: local + 1