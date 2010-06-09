tests
testBlock
	| code block |
	code := self ast: '^ []'.
	code size should be: 3.
	code first should be: #'push_closure'.
	
	block := code next.
	block class should be: PBlock.
	block threaded size should be: 0.
	
	code next should be: #return
	