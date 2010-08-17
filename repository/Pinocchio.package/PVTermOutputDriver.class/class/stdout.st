accessing
stdout
	stdoutTerminalInstance ifNil: [
		stdoutTerminalInstance := PVTermOutputDriver new.
		stdoutTerminalInstance outStream: PFile stdout ].
	^ stdoutTerminalInstance.