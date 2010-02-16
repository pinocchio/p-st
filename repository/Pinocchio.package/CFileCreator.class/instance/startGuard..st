exporting
startGuard: guardName
	stream
		nextPutAll: '#ifndef ';
		nextPutAll: guardName;
		cr;
		nextPutAll: '#define ';
		nextPutAll: guardName;
		nextPutAll: ' ';
		cr;
		cr