tests
testSendArg1
	| code |
	code := self ast: '^ self test: 1'.
	code size should be: 6.
	code first should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #'push_1'.
	code next should be: #send1.
	code next should be: #return.