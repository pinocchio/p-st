stack operations
pop
	| result |
	position = 0 ifTrue: [ self stackUnderflow ].
	result := array at: position.
	position := position - 1.
	^ result.