comparing
= aSend
	super = aSend ifFalse: [ ^ false ].
	^ receiver = aSend receiver