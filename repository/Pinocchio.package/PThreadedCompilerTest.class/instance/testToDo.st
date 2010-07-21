tests
testToDo
	| code block |
	code := self ast: '1 to: 3 do: [ :a| a]'.
	code first should be: #'push_1'.
	code next should be: #'push1'.
	code next should be: 3.
	code next should be: #'send_to_do_'.
	code next class should be: PBlock.

	code next should be: #'continue_to_do_'.
	code next should be: #zap.
	code next should be: #'jump_back2'.
	code next class should be: PSend.
	code next should be: #zap.
	code next should be: #'method_return_self'.
	code size should be: 11.