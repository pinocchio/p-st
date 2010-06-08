error handling
errorKeyNotFound: aKey
	self error: 'Key "' , aKey asString , '" not found.'.