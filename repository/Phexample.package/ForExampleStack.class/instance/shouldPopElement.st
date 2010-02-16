examples
shouldPopElement
	| stack |
	stack := self given: #shouldPushElement.
	stack pop should = 42.
	stack isEmpty should beTrue.
	stack size should = 0.