accessing
last
	position > 0 ifFalse: [ self stackUnderflow ].
	^ array at: position