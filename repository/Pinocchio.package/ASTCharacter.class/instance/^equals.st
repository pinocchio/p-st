as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self char = other char ifFalse: [^ false].
	^ true.