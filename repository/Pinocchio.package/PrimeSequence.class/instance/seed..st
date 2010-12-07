as yet unclassified
seed: aPrime
	aPrime isPrime ifFalse: [ self signal: PInvalidArgument new ].
	prime := aPrime.
	self refresh.