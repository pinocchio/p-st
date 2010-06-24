literal
initializeFloatFormat
	| sign number |
	^ PEGParser
		named: 'FLOAT-FORMAT'
		parsing: self numberFormat & '.' & (self decimalDigit strongPlus)
		semantics: [ :result | 
			(result first inject: (stream with: '') into: [ :c :n | c << n ]).
			(result second inject: stream into: [ :c :n | c << n ]).
			stream contents ].