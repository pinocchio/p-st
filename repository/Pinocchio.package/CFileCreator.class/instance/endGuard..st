exporting
endGuard: guardName
	stream cr;
		nextPutAll: '#endif //';
		nextPutAll: guardName.