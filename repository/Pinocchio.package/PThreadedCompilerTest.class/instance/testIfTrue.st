tests
testIfTrue
	| code block |
	code := self ast: '^ self ifTrue: [ 1]'.
	code size should be: 5.
	code first should be: #'push_self'.
	code next should be: #'send_ifTrue_'.
	code next class should be: PSend.
	
	block :=  code next.
	block class should be: PBlock.
	block threaded size should be: 1.
	block threaded first should be: #'block_return_1'.	
		
	code next should be: #'method_return'.