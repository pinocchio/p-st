as yet unclassified
= other 
	super = other ifFalse: [^ false].
	char = other char ifFalse: [^ false].
	^ true.