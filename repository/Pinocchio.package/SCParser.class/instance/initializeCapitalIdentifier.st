variable
initializeCapitalIdentifier
	^ PEGParser
		named: 'CAPITAL-IDENTIFIER'
		parsing: self uppercase && (self letter | self decimalDigit) strongTimes
		semantics: [ :result | (result second inject: (stream with: result first) into: [ :c :e | c << e ]) contents ]