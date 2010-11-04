shell
compile: code
	| method |
	method := 'method', String lf, code.
	^ self class compile: method