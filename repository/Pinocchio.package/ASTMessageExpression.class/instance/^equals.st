as yet unclassified
= other 
	super = other ifFalse: [^ false].
	self arguments = other arguments ifFalse: [^ false].
	self receiver = other receiver ifFalse: [^ false].
	^ true.