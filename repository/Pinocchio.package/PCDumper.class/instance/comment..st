convenience
comment: aString
	stream nextPutAll: '// ';
		nextPutAll: aString asString; 
		nextPutAll: '. '; cr.