interpretation
compile: code
	| methodString method |
	methodString := 'DoIt ^[', String lf, code, '] value'.
	method := PCompiler compile: methodString on: self.
	^ self class methods at: method selector put: method.