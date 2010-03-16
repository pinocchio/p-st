removing
remove: anObject 
	^ self remove: anObject ifAbsent: [ self errorKeyNotFound: anObject ].