compiling
compile: aString
	self warn: 'Compiling ''', aString, ''''.
	^ self visit: ((self parse: aString) sourceObject: aString)