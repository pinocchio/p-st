tests
testReturnNil
	| code |
	code := self ast: '^ nil'.
	code size should be: 1.
	code first should be: #'method_return_nil'.
	