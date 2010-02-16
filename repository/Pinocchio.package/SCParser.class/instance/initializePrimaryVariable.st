variable
initializePrimaryVariable
	^ PEGParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier
		semantics: [:result | self createVariable: result ]