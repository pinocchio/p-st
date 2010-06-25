literal
initializeString
	" XXX Have to optimize and clean..."
	| stringBorder first segment  |
	stringBorder := '''' asPEG omit: true.
	segment := PEGMultiParser named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not strongTimes <& stringBorder
		semantics: [ :result | result ].
	^ PEGMultiParser
		named: 'STRING'
		parsing: segment strongPlus
		semantics: [ :result |
			result inject: (stream on: '') into: [ :s :i | s << i << '''' ].
			stream position = 0 ifFalse: [ stream position: stream position - 1].
			stream contents ]