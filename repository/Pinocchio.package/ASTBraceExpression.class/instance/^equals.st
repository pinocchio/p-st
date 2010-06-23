as yet unclassified
= other
	super = other ifFalse: [ ^ false ].
	self expression = other expression ifFalse: [ ^ false ].
	^ true.