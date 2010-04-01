comparing
= aBlock
	self species = aBlock species ifFalse: [ ^ false ].
	self size = aBlock size ifFalse: [ ^ false ].
	self params size = aBlock params size ifFalse: [ ^ false ].
	self locals size = aBlock locals size ifFalse: [ ^ false ].
	self withIndexDo: [ :statement :index |
		statement = (aBlock at: index) ifFalse: [ ^ false ].
	].
	^ true.