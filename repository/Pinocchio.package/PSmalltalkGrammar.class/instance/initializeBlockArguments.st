block
initializeBlockArguments
	^ PEGMultiParser
		named: 'BLOCK-ARGUMENTS'
		parsing: (':' asPEG & self identifier) plus