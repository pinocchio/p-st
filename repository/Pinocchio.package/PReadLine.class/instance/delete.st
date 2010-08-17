removing
delete
	text deleteLeft ifTrue: [
		output backspace.
		self repaint ]