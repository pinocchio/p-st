literal
initializeSymbolKeywords
	^ PEGMultiParser
		named: 'SYMBOL-KEYWORDS'
		parsing: self keyword strongPlus