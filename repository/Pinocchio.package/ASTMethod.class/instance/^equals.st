as yet unclassified
= other 
	super  = other ifFalse: [^ false].
	self annotations = other annotations ifFalse: [^ false].
	self message = other message ifFalse: [^ false].
	self statements = other statements ifFalse: [^ false].
	self temporaries = other temporaries ifFalse: [^ false].
	^ true.