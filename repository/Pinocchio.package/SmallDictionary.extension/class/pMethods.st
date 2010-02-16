*Pinocchio
pMethods
	self = SmallDictionary ifTrue: [
		^ #all.
	].
	^ super pMethods.