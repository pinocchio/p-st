literal
initializeStringSegment
	" XXX Have to optimize and clean..."
	| stringBorder |
	stringBorder := '''' asParser.
	^ PEGMultiParser
		named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not consume strongTimes <& stringBorder