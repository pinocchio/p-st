variable
initializePrimaryVariable
	^ PEGMultiParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier && ('.' asPEG && self identifier) strongTimes