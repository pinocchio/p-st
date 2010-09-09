compiling
compile: aString on: aClass
	^ self new
		pclass: aClass;
		compile: aString