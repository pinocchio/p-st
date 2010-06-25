literal
initializeSymbolKeywords
	^ PEGMultiParser
		named: 'SYMBOL-KEYWORDS'
		parsing: self keyword strongPlus
		semantics: [ :result | (result inject: (stream on: '') into: [ :c :e | c << e << ':' ]) contents ]