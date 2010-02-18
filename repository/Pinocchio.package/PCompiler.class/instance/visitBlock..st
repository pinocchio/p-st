visitor
visitBlock: aBlock 
	| block index |
	self pushScope.
	scope declareAll: aBlock parameters.
	scope declareAll: aBlock temporaries.
	block := self createBlock: aBlock statements size.
	block params: (self acceptOnCollection: aBlock parameters) asPArray;
		locals: (self acceptOnCollection: aBlock temporaries) asPArray.
	index := 1.
	aBlock statements do: [:each|
		block at: index put: (self visit: each).
		index := index + 1.
	].
	self popScope.
	^ block