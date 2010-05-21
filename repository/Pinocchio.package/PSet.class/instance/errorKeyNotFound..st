error handling
errorKeyNotFound: aKey
	self inspect.
	self error: 'Key "' , aKey asString , '" not found.'.