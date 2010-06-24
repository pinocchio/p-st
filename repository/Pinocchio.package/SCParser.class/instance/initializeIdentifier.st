variable
initializeIdentifier
	^ PEGParser
		named: 'IDENTIFIER'
		parsing: self letter && (self letter | self decimalDigit | '!?' asPEGChoice) strongTimes
		semantics: [ :result | (result second inject: (stream with: result first) into: [ :c :e | c << e ]) contents ]