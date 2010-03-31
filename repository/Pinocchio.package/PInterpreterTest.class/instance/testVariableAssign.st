running
testVariableAssign
	| exp result closure |
	i context: (PMethodContext new: 1).
	exp := (PAssign new)
		variable: (PVariable localId: 0 scopeId: 0);
		expression: (PConstant new: 42).
	result := exp accept: i.
	result should = 42.
	(i context at: 1) should = 42.
	i context: (PBlockContext new: 2).
	i context outerScope: (PMethodContext new: 1).
	exp := (PAssign new)
		variable: (PVariable localId: 0 scopeId: 1);
		expression: (PConstant new: 43).
	result := exp accept: i.
	result should = 43.
	(i context at: 1) should = 43.
	exp := (PAssign new)
		variable: (PVariable localId: 0 scopeId: 0);
		expression: (PConstant new: 44).
	result := exp accept: i.
	result should = 44.
	(i context at: 1) should = 43.
	(i context outerScope at: 1) should = 44