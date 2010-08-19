testing
isReady: code
	[ PSmalltalkGrammar instance parseStatements: code ]
		on: PEGParsingFailure
		do: [ :ex | ex warnOn: PFile stderr. ^ ex input atEnd not ].
	^ true