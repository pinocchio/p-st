accessing
at: key
	<pinocchioPrimitive: #at: module: #'Collection.Dictionary'>
	^ self at: key ifAbsent: [self errorKeyNotFound: key].