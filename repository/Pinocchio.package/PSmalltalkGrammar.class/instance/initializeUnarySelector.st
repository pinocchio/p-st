selector
initializeUnarySelector
	^ PEGParser
		named: 'UNARY-SELECTOR'
		parsing: self identifier && ':' asPEG not