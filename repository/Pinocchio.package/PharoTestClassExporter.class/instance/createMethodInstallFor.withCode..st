exporting
createMethodInstallFor: method withCode: code
	| closure |
	closure := (PMethodClosure new)
		code: code;
		pclass: testCaseClass;
		selector: method selector.
	cdumper stream: stream.
	cdumper visit: closure.
	stream lf