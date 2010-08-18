literal
initializeRadix
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing: self numberFormat & 'r' asPEG omit <& self numberFormat