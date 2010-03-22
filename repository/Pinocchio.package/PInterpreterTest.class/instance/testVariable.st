running
testVariable
	| exp result closure |
	self preventRun: [ ^ self ].
	i context: (PMethodContext new: 1).
	i context at: 1 put: 42.
	exp := PVariable localId: 0 scopeId: 0.
	
	result := exp accept: i.
	result should = 42.