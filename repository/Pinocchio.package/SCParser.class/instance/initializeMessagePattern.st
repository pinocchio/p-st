selector
initializeMessagePattern
	^ PEGParser
		named: 'MESSAGE-PATTERN'
		parsing: (self keywordsArguments | self binaryMessageDefinition <= self unaryMessageDefinition)