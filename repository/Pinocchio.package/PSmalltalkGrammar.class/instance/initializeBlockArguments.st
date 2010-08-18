block
initializeBlockArguments
	^ PEGMultiParser
		named: 'BLOCK-ARGUMENTS'
		parsing: (':' asPEG omit & self identifier) plus