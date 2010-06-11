accessing
isUnscoped
	^ (self params size = 0) and: [ self locals size = 0 ].