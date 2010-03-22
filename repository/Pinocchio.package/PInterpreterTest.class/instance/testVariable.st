running
testVariable
	| exp result closure |
	self preventRun: [ ^ self ].
	i context: (PMethodContext new: 1).
	i context at: 1 put: 42.
	exp := PVariable localId: 0 scopeId: 0.
	
	result := exp accept: i.
	result should = 42.
	
	i context: (PBlockContext new: 2).
	i context outerScope: (PMethodContext new: 1).
	i context at: 1 put: 43.
	i context outerScope at: 1 put: 44.
	exp := PVariable localId: 0 scopeId: 1.
	result := exp accept: i.
	result should = 43.
	exp := PVariable localId: 0 scopeId: 0.
	result := exp accept: i.
	result should = 44.