tests
testLocal
	| code |
	code := self ast: 'test',String cr,'|a|',String cr, ' ^ a'.
	code size should be: 3.
	code first should be: #'push_variable'.
	code next class should be: PVariable.
	code next should be: #return.
	