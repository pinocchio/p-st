primitives
primReceiveInto: aString 
	<pPrimitive: #primReceiveInto: plugin: #'IO.Socket' code: '
     char * buffer = unicode_to_ascii(((String)#{aString})->value);
	int alloc = ((Symbol)#{aString})->size;
	int s;

	fwprintf(stdout, L"Buffer size ->: %i\n", alloc );	
	
    assert(!(  ( s =recv(unwrap_int(${handle}), buffer, alloc, 0)) == -1),
        fwprintf(stderr, L"Socket failed to initialize, errono %i", errno););

	if( s > 0 )
	{
	    fwprintf(stdout, L"Size ->: %i\n", s);	
 	   fwprintf(stdout, L"Read -> : %s\n", buffer);
		 fwprintf(stdout, L"Before new string\n", s);
	}
	if( s == 0 )
	{
		// socket closed
		fwprintf(stdout, L"Socket closed\n");
	}
	if( s < 0 )
	{
		fwprintf(stdout, L"Error\n");
		if( errno == EAGAIN )
		{ 	// no data availalbe in non-blocking mode, try again later
		}
		else
		{
		}
	}
	
	^ wrap_int( s ).
	'>
	self pinocchioPrimitiveFailed.
	