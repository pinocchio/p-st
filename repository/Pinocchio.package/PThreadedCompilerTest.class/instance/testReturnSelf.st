tests
testReturnSelf
	| code |
	code := self ast: 'test',String cr,' ^ self'.
	code size should be: 1.
	code first should be: #'return_self'.
	