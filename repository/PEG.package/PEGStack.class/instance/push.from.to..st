stack operations
push: collection from: start to: end
	| amount |
	amount := end - start.
	(size < (position + amount)) ifTrue: [ self grow: amount ].
	1 to: amount do: [ :i | array at: position + i put: (collection at: start + i) ].
	position := position + amount.