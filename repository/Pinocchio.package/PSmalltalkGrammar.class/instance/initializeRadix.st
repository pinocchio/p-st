literal
initializeRadix
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing: self numberFormat & 'r' <& self numberFormat