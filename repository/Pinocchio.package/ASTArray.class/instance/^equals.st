as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self literals = other literals ifFalse: [^ false].
	^ true.