tests
testSendArg2
	| code |
	code := self ast: 'test',String cr,' ^ self one: 1 two: 2'.
	code size should be: 6.
	(code at: 1) should be: #'push_next'.
	(code at: 2) class should be: PSend.
	(code at: 3) should be: #'push_self'.
	(code at: 4) should be: #push1.
	(code at: 5) should be: #push2.
	(code at: 6) should be: #send2.