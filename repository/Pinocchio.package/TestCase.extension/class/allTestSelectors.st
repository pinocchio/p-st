*Pinocchio
allTestSelectors
	| selectors |
	selectors := OrderedCollection newFrom: self allSelectors.
	^selectors select: [:each | 
		('test*' match: each) and: [each numArgs isZero]]
			