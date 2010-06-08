tests
testSendArg6
	| code |
	code := self ast: 'test',String cr,' ^ self one: 1 two: 2 three: 3 four: 4 five: 5 six: 6'.
	code size should be: 15.
	code first should be: #pushNext.
	code next class should be: PSend.
	code next should be: #pushSelf.
	code next should be: #push1.
	code next should be: #push2.
	code next should be: #pushNext.
	code next should be: 3.
	code next should be: #pushNext.
	code next should be: 4.
	code next should be: #pushNext.
	code next should be: 5.
	code next should be: #pushNext.
	code next should be: 6.
	code next should be: #sendn.
	code next should be: 6.