as yet unclassified
= other 
	super = other ifFalse: [^ false].
	self parameters = other parameters ifFalse: [^ false].
	^ true.