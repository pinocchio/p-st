literal
initializeSymbol
	^ PEGParser
		named: 'SYMBOL'
		parsing: (self symbolKeywords | self identifier <= self binarySelector <= self string)