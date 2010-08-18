literal
initializeStringSegment
	" XXX Have to optimize and clean..."
	| stringBorder |
	stringBorder := '''' asPEG omit.
	^ PEGMultiParser
		named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not consume strongTimes <& stringBorder