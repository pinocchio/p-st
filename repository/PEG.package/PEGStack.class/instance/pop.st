stack operations
pop
	| result |
	result := array at: position.
	position := position - 1.
	^ result.