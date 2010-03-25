exporting
createDeclarationFor: ast withString: str
	stream
		nextPutAll: 'Object ';
		nextPutAll: ast uid asString;
		nextPutAll: ';';
		lf.
	^ ast uid asString , ' = ' , str , ';' , String lf