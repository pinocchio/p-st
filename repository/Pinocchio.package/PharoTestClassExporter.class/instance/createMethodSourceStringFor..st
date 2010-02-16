exporting
createMethodSourceStringFor: method
	stream nextPutAll: '/*'; cr;
		nextPutAll: method getCCommentEscapedSource; cr;
		nextPutAll: '*/'; cr.