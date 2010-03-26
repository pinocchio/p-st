shelling
compile: code
	| method |
	method := 'method' , Character lf asString , code.
	^ nil class compile: method