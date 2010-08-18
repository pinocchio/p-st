literal
initializeFloatFormat
	^ PEGMultiParser
		named: 'FLOAT-FORMAT'
		parsing: self numberFormat & '.' <& self decimalDigit strongPlus