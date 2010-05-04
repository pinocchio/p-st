running
testSlot
	| exp result closure |
	i context: (PMethodContext new: 1).
	i context receiver: ChildClassTestClass new.
	i context receiver a: 42.
	exp := PSlot new index: 0.
	result := exp accept: i.
	result should = 42.
	i context receiver b: 43.
	exp := PSlot new index: 1.
	result := exp accept: i.
	result should = 43.
	i context: (PBlockContext new: 2).
	i context homeContext: (PMethodContext new: 1).
	i context homeContext receiver: ChildClassTestClass new.
	i context homeContext receiver a: 44.
	exp := PSlot new index: 0.
	result := exp accept: i.
	result should = 44