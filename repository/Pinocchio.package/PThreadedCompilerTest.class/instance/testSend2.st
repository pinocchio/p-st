tests
testSend2
	| code |
	code := self ast: 'self foo.
						 ^ self test'.
	code size should be: 10.
	code first should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #send0.
	code next should be: #pop.
	code next should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #send0.
	code next should be: #return.