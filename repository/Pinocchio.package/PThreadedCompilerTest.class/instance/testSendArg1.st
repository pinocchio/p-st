tests
testSendArg1
	| code |
	code := self ast: 'test',String cr,' ^ self test: 1'.
	code size should be: 5.
	(code at: 1) should be: #pushNext.
	(code at: 2) class should be: PSend.
	(code at: 3) should be: #pushSelf.
	(code at: 4) should be: #push1.
	(code at: 5) should be: #send1.