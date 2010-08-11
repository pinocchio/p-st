accessing
stderr
	stderrTerminalInstance ifNil: [
		stderrTerminalInstance := PTerminal new.
		stderrTerminalInstance outStream: PFile stderr.
	].
	^ stderrTerminalInstance.