block
initializeBlockArguments
	^ PEGMultiParser
		named: 'BLOCK-ARGUMENTS'
		parsing: ((':' asPEG omit) & self identifier) plus
		semantics: [ :result | result collect: [ :variable | self createVariable: variable ] ]