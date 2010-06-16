tests
testReturnTrue
	| code |
	code := self ast: '^ true'.
	code size should be: 1.
	code first should be: #'method_return_true'.
	