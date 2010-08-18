literal
initializeFloat
	^ PEGParser
		named: 'FLOAT'
		parsing: self floatFormat