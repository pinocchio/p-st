accessing
stdin
	stdinTerminalInstance ifNil: [
		stdinTerminalInstance := PTerminal new.
		stdinTerminalInstance outStream: PFile stdin.
	].
	^ stdinTerminalInstance.