initialization
initializeSymbolKeywords
	^ super initializeSymbolKeywords
		semantics: [ :result |
			result inject: (stream on: '') into: [ :c :e | c << e ].
			stream contents ]