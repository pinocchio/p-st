examples
shouldPushElement
	| stack |
	stack := self given: #shouldBeEmpty.
	stack push: 42.
	stack isEmpty should not beTrue.
	stack size should = 1.
	stack top should = 42.
	^ stack