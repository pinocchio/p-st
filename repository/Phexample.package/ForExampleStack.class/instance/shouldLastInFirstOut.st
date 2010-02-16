examples
shouldLastInFirstOut
	| stack |
	stack := self given: #shouldPushMoreElements.
	stack pop should = 13.
	stack pop should = 7.
	stack pop should = 42.
	stack isEmpty should beTrue.