as yet unclassified
= other 
	super = other ifFalse: [^ false].
	number = other number ifFalse: [^ false].
	base = other base ifFalse: [^ false].
	^ true.