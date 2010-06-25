literal
initializeFloatFormat
	| sign number |
	^ PEGMultiParser
		named: 'FLOAT-FORMAT'
		parsing: self numberFormat & '.' & (self decimalDigit strongPlus)
		semantics: [ :result | result asString ].