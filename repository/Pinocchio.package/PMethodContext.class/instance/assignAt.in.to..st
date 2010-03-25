interpreting
assignAt: local in: scope to: value
	scope = scopeId
		ifFalse: [ self error: 'Invalid scope identifier' ].
	^ self at: local + 1 put: value