removing
remove: anObject
	^ self remove: anObject ifAbsent: [ self valueNotFound: anObject ].