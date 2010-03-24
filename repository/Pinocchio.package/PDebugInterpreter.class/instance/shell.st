shelling
shell
	escapeShell := [^ self].
	true whileTrue: [
		self displayPrompt.
		self interpretFromStdin.
	]