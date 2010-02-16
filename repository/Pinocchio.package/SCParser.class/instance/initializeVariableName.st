variable
initializeVariableName
	^ PEGParser
		named: 'VARIABLE-NAME'
		parsing: self identifier
		semantics: [:result | self createVariable: result]