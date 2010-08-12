primitives
primReceive: max 
	<pPrimitive: #primReceive: plugin: #'IO.Socket' code: '
    char dir[ unwrap_int( #{max} )];
	int s;

    s =recv(unwrap_int(${handle}), dir, sizeof(dir), 0);

	if( s > 0 )
	{
	     // fwprintf(stdout, L"Size ->: %i\n", s);	
 	   	// fwprintf(stdout, L"Read -> : %s\n", dir);
		dir[s]      = L''\0'';
		fwprintf(stdout, L"Before new string\n", s);
  	     ^ new_String_from_charp(&dir[0]);
	}
	if( s == 0 )
	{
		// socket closed
		// fwprintf(stdout, L"Socket closed\n");
		fail(Network_Kernel_ConnectionClosed_Class, 0);
	}
	if( s < 0 )
	{
		// error
        	fwprintf(stderr, L"Socket failed to initialize, errono %i", errno);
		fail(Network_Kernel_NetworkError_Class, 0);
	}
	
	'>
	self pinocchioPrimitiveFailed.
	