as yet unclassified
= other 
	super = other ifFalse: [^ false].
	self path = other path ifFalse: [^ false].
	^ true.