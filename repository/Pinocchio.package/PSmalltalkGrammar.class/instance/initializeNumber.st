literal
initializeNumber
	^ PEGParser
		named: 'NUMBER'
		parsing: self numberFormat