tests
testReturnFalse
	| code |
	code := self ast: '^ false'.
	code size should be: 1.
	code first should be: #'return_false'
	