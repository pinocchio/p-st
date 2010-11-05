accessing
baseBenchmark
	| inst |
	self class == PBAbstractDictionary ifTrue: [ ^ nil ].
	inst := PBAbstractDictionary new.
	inst keyBlock: self keyBlock.
	inst valueBlock: self valueBlock.
	^ inst