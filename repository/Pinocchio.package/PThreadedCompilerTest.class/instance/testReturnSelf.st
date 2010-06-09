tests
testReturnSelf
	| code |
	code := self ast: '^ self'.
	code size should be: 1.
	code first should be: #'return_self'.
	