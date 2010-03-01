tests
testEvalFile
	|  file code method |
	self preventRun: [ ^ self].
	file := PReadFile open: 'code.p'.
	code := file readAll.
	file close.
	method := nil class compile: code.
	nil perform: method selector.
		
	