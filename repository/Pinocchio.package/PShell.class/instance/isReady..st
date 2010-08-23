testing
isReady: code
	[ PSmalltalkGrammar instance parseStatements: code ]
		on: PEGParsingFailure
		do: [ :ex | ^ ex input atEnd not ].
	^ true