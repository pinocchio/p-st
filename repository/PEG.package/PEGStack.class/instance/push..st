stack operations
push: o
	self grow: 1.
	position := position + 1.
	array at: position put: o