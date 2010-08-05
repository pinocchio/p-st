primitives
primStatus
	<pPrimitive: #primWrite: plugin: #'IO.Socket' code: '	
	int sval;
	int ret_val = 1;
	fd_set check_set;
	struct timeval to;

	int sock = unwrap_int(${handle});

	FD_ZERO(&check_set);
	FD_SET(sock,&check_set);

	to.tv_sec = 0;
	to.tv_usec = 1000*10 ;

	if((sval = select(sock + 1,&check_set,0,0,&to)) < 0)
	{
		 fwprintf(stderr, L"Select returned %d %d",sval,errno);
		ret_val = -1;
	}
	if(sval == 0)
	{
		 fwprintf(stderr, L"Select timed out.");
		ret_val = 0;
	}
	else if(sval > 0)
	{
		 fwprintf(stderr, L"Select shows %d as return val.",sval);
	}
	
	return( wrap_int(ret_val) );
	'>
	
	self pinocchioPrimitiveFailed.
	