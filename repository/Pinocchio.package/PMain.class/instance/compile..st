interpretation
compile: code
	| methodString method |
	methodString := 'DoIt ^[', Character lf asString, code, '] value'.
	method := PCompiler compile: methodString on: self class.
	^ self class methods at: method selector put: method.