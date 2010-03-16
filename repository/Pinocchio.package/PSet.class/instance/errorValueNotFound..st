error handling
errorValueNotFound: aKey
	self errorContents.
	self error: 'Value "', aKey asString, '" not found.'.
	