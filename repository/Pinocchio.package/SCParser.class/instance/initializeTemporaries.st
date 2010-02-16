basic-block
initializeTemporaries
	^ PEGParser
		named: 'TEMPORARIES'
		parsing: (self bar & self variableName times <& self bar)