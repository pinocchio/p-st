as yet unclassified
= other 
	super = other ifFalse: [^ false].
	string = other string ifFalse: [^ false].
	^ true.