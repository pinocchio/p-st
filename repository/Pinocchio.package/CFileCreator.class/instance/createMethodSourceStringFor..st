exporting
createMethodSourceStringFor: method
	stream
		nextPutAll: '/*';
		lf;
		nextPutAll: method asCCommentEscapedSource;
		lf;
		nextPutAll: '*/';
		lf