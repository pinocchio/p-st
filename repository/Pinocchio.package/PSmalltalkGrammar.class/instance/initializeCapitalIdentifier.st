variable
initializeCapitalIdentifier
	^ PEGMultiParser
		named: 'CAPITAL-IDENTIFIER'
		parsing: self uppercase && (self letter | self decimalDigit) strongTimes