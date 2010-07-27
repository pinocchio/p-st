variable
initializePrimaryVariable
	^ PEGMultiParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier && (('.' asPEG omit) && self identifier) strongTimes
		semantics: [ :result | self createReference: result asArray ]