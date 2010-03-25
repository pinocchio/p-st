tests
testEvalFile
	| file code method |
	self preventRun: [ ^ self ].
	(PWriteFile open: 'code.p')
		<< 'test';
		lf;
		<< '    Pinocchio.IO.File stdout << ''Output''; lf. ';
		lf;
		close.
	file := PReadFile open: 'code.p'.
	code := file readAll.
	file close.
	method := nil class compile: code.
	nil perform: method selector