tests
testToDo
	| code block |
	code := self ast: '1 to: 3 do: [ :a| a]'.
	code size should be: 3.
	code first should be: #'push_closure'.
	
	block := code next.
	block class should be: PBlock.
	block threaded size should be: 0.
	
	code next should be: #return
	