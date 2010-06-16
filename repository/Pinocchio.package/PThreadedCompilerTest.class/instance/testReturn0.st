tests
testReturn0
	| code |
	code := self ast: '^ 0'.
	code size should be: 1.
	code first should be: #'method_return_0'.
	