comparing
= aVariable
	self species = aVariable species ifFalse: [ ^ false ].
	^ (localId = aVariable localId) and: [ scopeId = aVariable scopeId ]