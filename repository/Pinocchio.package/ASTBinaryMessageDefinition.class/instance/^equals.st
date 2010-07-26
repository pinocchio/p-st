comparing
= other 
	super = other ifFalse: [^ false].
	self parameter = other parameter ifFalse: [^ false].
	^ true.