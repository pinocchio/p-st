examples
shouldFailWhenPopEmpty
	| stack |
	stack := self given: #shouldBeEmpty.
	[ stack pop ] should signal: Error withMessageText: 'this stack is empty'.