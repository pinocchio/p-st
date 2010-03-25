interpreting
lookupAt: local in: scope
	scope = scopeId
		ifTrue: [ ^ self at: local + 1 ].
	^ outerScope lookupAt: local in: scope