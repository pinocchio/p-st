comparing
= aSuper
	self species = aSuper species ifFalse: [ ^ false ].
	self size = aSuper size ifFalse: [ ^ false ].
	message = aSuper message ifFalse: [ ^ false ].
	self withIndexDo: [ :expression :index |
		expression = (aSuper at: index) ifFalse: [ ^ false ] ].
	^ true