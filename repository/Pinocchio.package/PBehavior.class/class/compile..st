pharo-exporting
compile: aString
	| method |
	method := PCompiler compile: aString.
	self methods 
		at: method selector 
		ifAbsentPut: method.