accessing
stderr
	stderrTerminalInstance ifNil: [
		stderrTerminalInstance := PVTermOutputDriver new.
		stderrTerminalInstance outStream: PFile stderr ].
	^ stderrTerminalInstance