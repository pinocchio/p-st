as yet unclassified
= other
	super = other ifFalse: [ ^ false].
	self parameters = other parameters ifFalse: [ ^ false ].
	self statements = other statements ifFalse: [ ^ false ].
	self temporaries = other temporaries ifFalse: [ ^ false ].
	^ true