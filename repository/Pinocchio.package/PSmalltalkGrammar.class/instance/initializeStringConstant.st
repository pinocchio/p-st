literal
initializeStringConstant
	^ PEGParser
		named: 'STRING-CONSTANT'
		parsing: self string