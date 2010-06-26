stack operations
poke: object
	position > 0 ifFalse: [ self stackUnderflow ].
	array at: position put: object