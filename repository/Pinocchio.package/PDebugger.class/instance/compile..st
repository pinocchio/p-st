shell
compile: code
	| method |
	method := 'method', String lf, code.
	^ nil class compile: method