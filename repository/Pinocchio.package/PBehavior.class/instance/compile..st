compiling
compile: aString
	| method |
	method := PCompiler compile: aString on: self.
	^ self methods 
		at: method selector 
		ifAbsentPut: method.