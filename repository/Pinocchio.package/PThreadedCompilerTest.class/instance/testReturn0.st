tests
testReturn0
	| code |
	code := self ast: 'test',String cr,' ^ 0'.
	code size should be: 1.
	code first should be: #'push_0'.
	