exporting
createDeclarationFor: ast withString: str
	stream
		nextPutAll: 'Object ';
		nextPutAll: ast uid asString;
		nextPutAll: ';'; cr.
	^ ast uid asString , ' = ' , str , ';' , String cr
		