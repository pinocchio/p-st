interpreting
lookupAt: local in: scope
	scope = scopeId ifTrue: [ 
		^ self variables at: (local + 1 )
							ifAbsentPut: (PVariable localId: local scopeId: scopeId).
	].
	self fail.
		
