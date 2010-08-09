initialize-release
pinitialize 
	<renameExport: #initialize >
	stderrTerminalInstance := PTerminal new.
	stderrTerminalInstance outStream: PFile stderr.
	stdoutTerminalInstance := PTerminal new.
	stdoutTerminalInstance outStream: PFile stdout.