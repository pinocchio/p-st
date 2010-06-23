typing
= other 
	super = other ifFalse: [^ false].
	self name = other name ifFalse: [^ false].
	^ true.