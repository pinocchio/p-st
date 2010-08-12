primitives
primWrite: aString
	<pPrimitive: #primWrite: plugin: #'IO.Socket' code: '	
    char * buffer = unicode_to_ascii(((String)#{aString})->value);
    int s;

    s = write(unwrap_int(${handle}), buffer, strlen(buffer));

     if( s > 0 )
	{
	    //fwprintf(stdout, L"Size ->: %i\n", s);	
 	    //fwprintf(stdout, L"Read -> : %s\n", buffer);
	    ^ self;
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
	