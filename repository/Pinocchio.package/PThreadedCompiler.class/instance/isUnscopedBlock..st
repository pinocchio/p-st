special
isUnscopedBlock: block
	^ ((block isKindOf: PBlock) and: [ block params size = 0 ]) and: [ block locals size = 0 ]