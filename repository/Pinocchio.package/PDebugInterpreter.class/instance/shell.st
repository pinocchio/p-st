shelling
shell
	escapeShell := [ :input | ^ input ].
	true
		whileTrue:
			[ self displayPrompt.
			self interpretFromStdin ]