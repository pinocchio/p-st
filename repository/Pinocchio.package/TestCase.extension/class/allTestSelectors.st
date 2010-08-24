*Pinocchio
allTestSelectors
	| selectors |
	selectors := OrderedCollection newFrom: self allSelectors.
	^ selectors select: [:each | 
		(each beginsWith: 'test') and: [(each includes: $:) not]]
			