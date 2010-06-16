tests
testBlockLocals
	| code block |
	code := self ast: '^ [ |a| a ]'.
	code size should be: 3.
	code first should be: #'push_closure'.
	
	block := code next.
	block class should be: PBlock.
	block threaded size should be: 3.
	block threaded first should be: #'push_variable'.
	block threaded second class should be: PVariable.
	(block threaded at: 3) should be: #'method_return'.
	
	code next should be: #'method_return'.
	