variable
initializeVariableName
	^ PEGParser
		named: 'VARIABLE-NAME'
		parsing: self identifier