tests
testSend
	| code |
	code := self ast: 'test',String cr,' ^ self test'.
	code size should be: 4.
	(code at: 1) should be: #pushNext.
	(code at: 2) class should be: PSend.
	(code at: 3) should be: #pushSelf.
	(code at: 4) should be: #send0.