convenience
putAssert: anAssertingSourceString 
	stream nextPutAll: 'assert0(';
		nextPutAll: anAssertingSourceString;
		nextPutAll: ');'; cr.