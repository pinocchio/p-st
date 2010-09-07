as yet unclassified
= other 
	super = other ifFalse: [^ false].
	low = other low ifFalse: [^ false].
	high = other high ifFalse: [^ false].
	^ true.