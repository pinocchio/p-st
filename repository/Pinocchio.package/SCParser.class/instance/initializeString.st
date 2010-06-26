literal
initializeString
	" XXX Have to optimize and clean..."
	| stringBorder first segment  |
	stringBorder := '''' asPEG omit: true.
	segment := PEGMultiParser named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not strongTimes <& stringBorder
		semantics: [ :result | result asString ].
	^ PEGMultiParser
		named: 'STRING'
		parsing: segment strongPlus
		semantics: [ :result |
			result size = 0
				ifTrue: [ '' ]
				ifFalse: [
					result inject: (stream on: '') into: [ :s :i | s << i << '''' ].
					stream position: stream position - 1.
					stream contents ] ]