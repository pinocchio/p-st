basic-block
initializeReturn
	^ PEGParser
		named: 'RETURN'
		parsing: '^' asParser & self expression <& '.' asParser optional omit