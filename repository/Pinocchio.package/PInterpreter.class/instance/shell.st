interpretation
shell
	true whileTrue: [
		self displayPrompt.
		self interpretFromStdin.
	]