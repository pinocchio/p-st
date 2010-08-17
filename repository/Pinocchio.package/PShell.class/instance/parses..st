testing
parses: code
	[ SCParser instance statements end match:
		(PEGStringScanner on: code separator: SCParser instance separator) ]
		on: PEGParsingFailure
		do: [ :ex | ^ ex input atEnd ].
	^ true