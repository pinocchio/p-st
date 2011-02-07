accessing
stdout
	stdoutTerminalInstance ifNil: [
		stdoutTerminalInstance := PVTermOutputDriver with: PFile stdout ].
	^ stdoutTerminalInstance.