as yet unclassified
= other 
	super = other ifFalse: [^ false].
	self arguments = other arguments ifFalse: [^ false].
	^ true.