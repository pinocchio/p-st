as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self string = other string ifFalse: [^ false].
	^ true.