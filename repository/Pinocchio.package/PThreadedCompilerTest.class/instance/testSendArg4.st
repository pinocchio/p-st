tests
testSendArg4
	| code |
	code := self ast: 'test',String cr,' ^ self one: 1 two: 2 three: 3 four: 4'.
	code size should be: 10.
	code first should be: #'push1'.
	code next class should be: PSend.
	code next should be: #'push_self'.
	code next should be: #push1.
	code next should be: #push2.
	code next should be: #'push1'.
	code next should be: 3.
	code next should be: #'push1'.
	code next should be: 4.
	code next should be: #send4.