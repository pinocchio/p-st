removing
backspace
	text deleteRight ifTrue: [
		output deleteCharacter.
		self repaint ]