literal
initializeString
	^ PEGMultiParser
		named: 'STRING'
		parsing: self stringSegment strongPlus