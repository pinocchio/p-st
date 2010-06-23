as yet unclassified
= other
	super = other ifFalse: [ ^ false ].
	self cascades = other cascades ifFalse: [ ^ false ].
	self receiver = other receiver ifFalse: [ ^ false ].
	^ true.