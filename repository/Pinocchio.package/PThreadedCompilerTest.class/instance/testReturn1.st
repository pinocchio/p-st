tests
testReturn1
	| code |
	code := self ast: 'test',String cr,' ^ 1'.
	code size should be: 1.
	code first should be: #'return_1'.
	