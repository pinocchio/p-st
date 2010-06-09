tests
testAssignment2Return
	| code |
	code := self ast: 'test',String cr,'|a|',String cr,'a := self.',String cr,'^ a := 10.'.
	code size should be: 11.
	code first should be: #push1.
	code next class should be: PAssign.
	code next should be: #'push_self'.
	code next should be: #assign.
	code next should be: #pop.
	code next should be: #push1.
	code next class should be: PAssign.
	code next should be: #push1.
	code next should be: 10.
	code next should be: #assign.
	code next should be: #return.
	