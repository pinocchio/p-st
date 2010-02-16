literal
initializeNumberFormat
	| sign number |
	^ PEGParser
		named: 'NUMBER-FORMAT'
		parsing: '-' asPEG optional & (self decimalDigit | self uppercase) strongPlus
		semantics: [ :result |
			((result at: 1) resultIfFailed: [ '' ]),
			((result at: 2) inject: '' into: [:c :n | c, n ])
		]