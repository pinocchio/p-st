variable
initializeIdentifier
	^ PEGParser
		named: 'IDENTIFIER'
		parsing: (self letter && (self letter | self decimalDigit) strongTimes)
		semantics: [ :result |
			result second inject: result first into: [ :c :e | c, e ]
		]