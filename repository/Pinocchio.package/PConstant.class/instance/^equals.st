comparing
= aConstant
	self species = aConstant species ifFalse: [ ^ false ].
	^ constant = aConstant constant