literal
initializeString
	" XXX Have to optimize and clean..."
	| stringBorder first segment  |
	stringBorder := '''' asPEG omit.
	segment := PEGMultiParser named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not consume strongTimes <& stringBorder
		semantics: [ :result | result asString ].
	^ PEGMultiParser
		named: 'STRING'
		parsing: segment strongPlus
		semantics: [ :result |
			result size = 0
				ifTrue: [ '' ]
				ifFalse: [
					result inject: (stream with: (result removeFirst)) into: [ :s :i | s << ''''<< i ].
					stream contents ] ]