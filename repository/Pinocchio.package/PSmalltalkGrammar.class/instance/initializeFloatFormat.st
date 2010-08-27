literal
initializeFloatFormat
	^ PEGMultiParser
		named: 'FLOAT-FORMAT'
		parsing: self numberFormat & '.' asPEG consume <& self decimalDigit strongPlus