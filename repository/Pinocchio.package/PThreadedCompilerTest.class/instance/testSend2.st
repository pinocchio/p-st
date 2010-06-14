tests
testSend2
	| code |
	code := self ast: 'self foo.
						 ^ self test'.
	code size should be: 8.
	code first should be: #'push_self'.
	code next should be: #send0.
	code next class should be: PSend.
	code next should be: #zap.
	code next should be: #'push_self'.
	code next should be: #send0.
	code next class should be: PSend.
	code next should be: #return.