readline
parsesUntil: code
	[ PSmalltalkGrammar instance parseStatements: code ]
		on: PEGParsingFailure
		do: [ :ex | ex input atEnd ifFalse: [ ^ ex input position ] ].
	^ nil