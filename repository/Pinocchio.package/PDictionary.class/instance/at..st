accessing
at: key
	^ self at: key ifAbsent: [ self errorKeyNotFound: key ]