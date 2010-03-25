running
testInstVariableAssign
	| exp result closure |
	self preventRun: [ ^ self ].
	i context: (PMethodContext new: 1).
	i context receiver: ChildClassTestClass new.
	exp := (PAssign new)
		variable: (PInstVariable new index: 0);
		expression: (PConstant new: 42).
	result := exp accept: i.
	result should = 42.
	i currentSelf a should = 42.
	exp := (PAssign new)
		variable: (PInstVariable new index: 1);
		expression: (PConstant new: 43).
	result := exp accept: i.
	result should = 43.
	i currentSelf a should = 42.
	i currentSelf b should = 43.
	i context: (PBlockContext new: 2).
	i context homeContext: (PMethodContext new: 1).
	i context homeContext receiver: ChildClassTestClass new.
	exp := (PAssign new)
		variable: (PInstVariable new index: 0);
		expression: (PConstant new: 44).
	result := exp accept: i.
	result should = 44.
	i currentSelf a should = 44