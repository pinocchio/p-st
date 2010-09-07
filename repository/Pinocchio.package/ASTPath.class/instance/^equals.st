as yet unclassified
= other 
	super = other ifFalse: [^ false].
	path = other path ifFalse: [^ false].
	^ true.