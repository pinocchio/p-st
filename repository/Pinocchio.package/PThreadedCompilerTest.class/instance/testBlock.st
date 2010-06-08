tests
testBlock
	| code block |
	code := self ast: 'test',String cr,'^ []'.
	code size should be: 2.
	code first should be: #'push_closure'.
	block := code next.
	block class should be: PBlock.
	
	block threaded size should be: 0.
	