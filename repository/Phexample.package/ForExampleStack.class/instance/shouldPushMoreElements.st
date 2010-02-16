examples
shouldPushMoreElements
	| stack |
	stack := self given: #shouldPushElement.
	stack push: 7.
	stack push: 13.
	stack isEmpty should not beTrue.
	stack size should = 3.
	stack top should = 13.
	^stack