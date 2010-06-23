as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self number = other number ifFalse: [^ false].
	^ true.