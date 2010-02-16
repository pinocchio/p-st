accessing
ast: aString
	^ parser match: (PEGStringScanner on: aString).