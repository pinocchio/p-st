running
testSelf
	| object exp result |
	self preventRun: [ ^ self ].
	object := ChildClassTestClass new.
	i context: (PBlockContext new: 1).
	i context homeContext: (PMethodContext new: 1).
	i context homeContext receiver: object.
	exp := PSelf new.
	result := exp accept: i.
	result should = object