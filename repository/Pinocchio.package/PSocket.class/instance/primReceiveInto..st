primitives
primReceiveInto: aString 
	<pPrimitive: #primReceiveInto: plugin: #'IO.Socket' code: '
     char * buffer = unicode_to_ascii(((String)#{aString})->value);
	int alloc = ((Symbol)#{aString})->size;
	int s;

	//fwprintf(stdout, L"Buffer size ->: %i\n", alloc );	
     s = recv(unwrap_int(${handle}), buffer, alloc, 0);

	if( s > 0 )
	{
	    //fwprintf(stdout, L"Size ->: %i\n", s);	
 	    //fwprintf(stdout, L"Read -> : %s\n", buffer);
	    ^ wrap_int( s ).
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
        	fwprintf(stderr, L"Socket failed to initialize, errono %i", errno););
		fail(Network_Kernel_NetworkError_Class, 0);
	}
	

	'>
	self pinocchioPrimitiveFailed.
	