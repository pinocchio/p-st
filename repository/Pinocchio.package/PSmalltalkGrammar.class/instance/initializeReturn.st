basic-block
initializeReturn
	^ PEGParser
		named: 'RETURN'
		parsing: '^' asPEG omit & self expression <& '.' asPEG optional omit