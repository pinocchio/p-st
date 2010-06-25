stack operations
peek
	position > 0 ifFalse: [ self stackUnderflow ].
	^ array at: position