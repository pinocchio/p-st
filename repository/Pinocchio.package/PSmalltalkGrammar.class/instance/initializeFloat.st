literal
initializeFloat
	^ PEGMultiParser
		named: 'FLOAT'
		parsing: self numberFormat & '.' <& self decimalDigit strongPlus