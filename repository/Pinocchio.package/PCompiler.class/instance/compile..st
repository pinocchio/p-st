compiling
compile: aString
	^ self visit: ((self parse: aString) sourceObject: aString)