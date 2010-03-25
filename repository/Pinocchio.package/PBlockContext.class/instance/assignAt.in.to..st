interpreting
assignAt: local in: scope to: value
	scope = scopeId
		ifTrue: [ ^ self at: local + 1 put: value ].
	^ outerScope
		assignAt: local
		in: scope
		to: value