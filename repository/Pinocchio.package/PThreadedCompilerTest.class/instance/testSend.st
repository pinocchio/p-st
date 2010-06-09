tests
testSend
	| code |
	code := self ast: 'test',String cr,' ^ self test'.
	code size should be: 5.
	code first should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #send0.
	code next should be: #return.