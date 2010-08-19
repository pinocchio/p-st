basic-block
initializeReturn
	^ PEGParser
		named: 'RETURN'
		parsing: '^' asPEG & self expression <& '.' asPEG optional omit