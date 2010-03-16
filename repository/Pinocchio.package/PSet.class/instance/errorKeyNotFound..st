error handling
errorKeyNotFound: aKey
	self errorContents.
	self error: 'Key "', aKey asString, '" not found.'.