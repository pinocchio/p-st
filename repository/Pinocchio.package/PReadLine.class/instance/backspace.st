removing
backspace
	text deleteRight ifTrue: [
		output deleteCharacter.
		self moveFailure: -1.
		self repaint.]