stack operations
push: o
	size < (position := position + 1) ifTrue: [ self grow: 1 ].
	array at: position put: o