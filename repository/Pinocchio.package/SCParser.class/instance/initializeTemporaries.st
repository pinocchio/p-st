basic-block
initializeTemporaries
	^ PEGMultiParser
		named: 'TEMPORARIES'
		parsing: (self bar & self variableName times <& self bar)
		semantics: [ :result | result ]