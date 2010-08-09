primitives
primReceive: max 
	<pPrimitive: #primReceive: plugin: #'IO.Socket' code: '
    char dir[ unwrap_int( #{max} )];
	int s;

    assert(!(  ( s =recv(unwrap_int(${handle}), dir, sizeof(dir), 0)) == -1),
        fwprintf(stderr, L"Socket failed to initialize"););

	if( s > 0 )
	{
	    fwprintf(stdout, L"Size: %i\n", s);	
 	   fwprintf(stdout, L"Read: %s\n", dir);
		dir[s]      = L''\0'';
 	   ^ new_String_from_charp(&dir[0]);
	}
	if( s == 0 )
	{
		// socket closed
		fwprintf(stdout, L"Socket closed\n", dir);
	}
	if( s < 0 )
	{
		fwprintf(stdout, L"Error\n", dir);
		if( errno == EAGAIN )
		{ // no data availalbe in non-blocking mode, try again later
		}
		else
		{
		}
	}
	'>
	self pinocchioPrimitiveFailed.
	