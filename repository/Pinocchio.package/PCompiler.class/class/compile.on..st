compiling
compile: aString on: aClass
	^ (self new)
		pclass: aClass;
		visit: (self parser match: (PEGStringScanner on: aString))