tests
testSendArg2
	| code |
	code := self ast: '^ self one: 1 two: 2'.
	code size should be: 7.
	code first should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #'push_1'.
	code next should be: #'push_2'.
	code next should be: #send2.
	code next should be: #return.