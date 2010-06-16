tests
testSend
	| code |
	code := self ast: '^ self test'.
	code size should be: 4.
	code first should be: #'push_self'.
	code next should be: #send0.
	code next class should be: PSend.
	code next should be: #'method_return'.