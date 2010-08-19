literal
initializeSymbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: '#' asPEG plus && self symbol