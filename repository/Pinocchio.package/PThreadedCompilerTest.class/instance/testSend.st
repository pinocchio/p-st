tests
testSend
	| code |
	code := self ast: 'test',String cr,' ^ self test'.
	code size should be: 4.
	(code at: 1) should be: #'push_next'.
	(code at: 2) class should be: PSend.
	(code at: 3) should be: #'push_self'.
	(code at: 4) should be: #send0.