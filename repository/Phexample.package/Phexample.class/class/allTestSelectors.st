accessing
allTestSelectors
	|selectors|
	selectors := self allSelectors clone.
	selectors removeAll: Phexample allSelectors.
	^ selectors select: [ :each | each numArgs isZero and: [ each beginsWith: 'should' ]]
			