interpretation
load: filename
	| file code method |
	file := PReadFile open: filename.
	code := file readAll.
	file close.
	method := nil class compile: code.
	^ nil perform: method selector.