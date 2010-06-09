tests
testBlock1
	| code block |
	code := self ast: '^ [ 1 ]'.
	code size should be: 3.
	code first should be: #'push_closure'.
	
	block := code next.
	block class should be: PBlock.
	block threaded size should be: 2.
	block threaded first should be: #'push_1'.
	block threaded second should be: #pop.
	
	code next should be: #return.
	