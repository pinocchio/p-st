interpreting
lookupAt: local in: scope
	scope = scopeId
		ifFalse: [ self error: 'Invalid scope identifier: ', scope ].
	^ self at: local + 1