compiling
parse: aString
	^ self parser method fullmatch: (PEGStringScanner on: aString separator: self parser separator)