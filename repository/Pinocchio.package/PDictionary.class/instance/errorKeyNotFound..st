error handling
errorKeyNotFound: aKey
	^ PKeyNotFound new
		key: aKey;
		dictionary: self;
		signal