expression
initializeKeywordsArguments
	^ PEGMultiParser
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus