literal
initializeFloatFormat
	| sign number |
	^ PEGParser
		named: 'FLOAT-FORMAT'
		parsing: self numberFormat & '.' & (self decimalDigit strongPlus)
		semantics: [ :result | 
			(result first inject: '' into: [ :c :n | c , n ]), (result second inject: '' into: [ :c :n | c , n ]).].