compiling
compile: aString
	^  self new visit: (self parser match: (PEGStringScanner on: aString)).