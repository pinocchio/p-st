compiling
compile: aString on: aClass
	^ (self new)
		pclass: aClass;
		visit: (self parser fullmatch: (PEGStringScanner on: aString))