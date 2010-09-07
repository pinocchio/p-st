as yet unclassified
= other 
	super = other ifFalse: [^ false].
	symbol = other symbol ifFalse: [^ false].
	^ true.