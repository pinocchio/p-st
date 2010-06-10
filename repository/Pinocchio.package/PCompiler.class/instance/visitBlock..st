visitor
visitBlock: aBlock
	| block hasState |
	hasState := aBlock parameters size > 0 or: [ aBlock temporaries size > 0 ].
	hasState ifTrue: [ self pushScope.
		scope declareAll: aBlock parameters.
		scope declareAll: aBlock temporaries ].
	block := self createBlock: aBlock statements size.
	block
		params: (self acceptOnCollection: aBlock parameters) asArray
		locals: (self acceptOnCollection: aBlock temporaries) asArray.
	aBlock statements withIndexDo: [ :each :index | block at: index put: (self visit: each) ].
	hasState ifTrue: [ self popScope ].
	^ block