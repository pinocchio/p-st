variable
initializeIdentifier
	^ PEGMultiParser
		named: 'IDENTIFIER'
		parsing: self letter && (self letter | self decimalDigit | '!?' asPEGChoice) strongTimes
		semantics: [ :result | result asString ]