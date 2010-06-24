literal
initializeNumberFormat
	| sign number |
	^ PEGParser
		named: 'NUMBER-FORMAT'
		parsing: '-' asPEG optional & (self decimalDigit | self uppercase) strongPlus
		semantics: [ :result |
			((result at: 2)
				inject: (stream with: ((result at: 1) resultIfFailed: [ '' ]))
				into: [ :c :n | c << n ]) contents ]