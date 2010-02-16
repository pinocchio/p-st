examples
shouldBeEmpty
	| stack |
	stack := Stack new.
	stack isEmpty should beTrue.
	stack size should = 0.
	^ stack