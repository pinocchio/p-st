exporting
createMethodSourceStringFor: method
	stream
		nextPutAll: '/*';
		lf;
		nextPutAll: method getCCommentEscapedSource;
		lf;
		nextPutAll: '*/';
		lf