literal
initializeNumberFormat
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: '-' asPEG optional & (self decimalDigit | self uppercase) strongPlus
		semantics: [ :result |
			(result at: 1)
				ifMatched: [ :m | result at: 1 put: m ]
				ifFailed: [ result removeFirst ].
			result asString ]