literal
initializeSymbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: '#' asPEG plus omit && self symbol