tests
testReturnFalse
	| code |
	code := self ast: 'test',String cr,' ^ false'.
	code size should be: 1.
	code first should be: #'return_false'
	