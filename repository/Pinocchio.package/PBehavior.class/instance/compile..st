compiling
compile: aString
	| method |
	method := PCompiler compile: aString on: self.
	^ self define: method selector as: method