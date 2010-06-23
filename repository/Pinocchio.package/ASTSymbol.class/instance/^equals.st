as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self symbol = other symbol ifFalse: [^ false].
	^ true.