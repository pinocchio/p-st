removing
delete
	text deleteLeft ifTrue: [
		output backspace.
		self moveFailure: -1.
		self repaint. ]