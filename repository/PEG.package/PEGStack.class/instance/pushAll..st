stack operations
pushAll: o
	(size < (position + o size)) ifTrue: [ self grow: o size ].
	1 to: o size do: [ :i | array at: position + i put: (o at: i) ].
	position := position + o size.