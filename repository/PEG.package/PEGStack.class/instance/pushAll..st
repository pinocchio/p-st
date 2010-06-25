stack operations
pushAll: o
	self grow: o size.
	o withIndexDo: [ :el :i | array at: position + i put: el ].
	position := position + o size.