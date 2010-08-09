primitives
primReceiveInto: aString 
	<pPrimitive: #primReceiveInto: plugin: #'IO.Socket' code: '
     char * buffer = unicode_to_ascii(((String)#{aString})->value);

	int s;

    assert(!(  ( s =recv(unwrap_int(${handle}), buffer, strlen(buffer), 0)) == -1),
        fwprintf(stderr, L"Socket failed to initialize"););

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
	
	^ s.
	'>
	self pinocchioPrimitiveFailed.
	