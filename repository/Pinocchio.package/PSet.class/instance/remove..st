removing
remove: anObject 
	^ self remove: anObject ifAbsent: [ self errorValueNotFound: anObject ].