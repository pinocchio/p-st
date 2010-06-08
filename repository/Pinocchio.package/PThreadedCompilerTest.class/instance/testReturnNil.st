tests
testReturnNil
	| code |
	code := self ast: 'test',String cr,' ^ nil'.
	code size should be: 1.
	code first should be: #'push_nil'.
	