tests
testReturnTrue
	| code |
	code := self ast: 'test',String cr,' ^ true'.
	code size should be: 1.
	code first should be: #'return_true'.
	