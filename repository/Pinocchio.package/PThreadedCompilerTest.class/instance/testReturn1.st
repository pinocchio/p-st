tests
testReturn1
	| code |
	code := self ast: '^ 1'.
	code size should be: 1.
	code first should be: #'method_return_1'.
	