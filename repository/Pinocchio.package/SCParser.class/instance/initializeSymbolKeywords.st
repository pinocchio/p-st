literal
initializeSymbolKeywords
	^ PEGParser
		named: 'SYMBOL-KEYWORDS'
		parsing: self keyword strongPlus
		semantics: [ :result |
			result inject: '' into: [ :c :e | c, e, ':' ]
		]