exporting
endGuard: guardName
	stream
		lf;
		nextPutAll: '#endif //';
		nextPutAll: guardName