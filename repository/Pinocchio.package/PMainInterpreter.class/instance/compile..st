interpretation
compile: code
	| methodString method |
	methodString := 'DoIt', Character lf asString, code.
	method := PCompiler compile: methodString on: self.
	^ nil class methods at: method selector put: method.