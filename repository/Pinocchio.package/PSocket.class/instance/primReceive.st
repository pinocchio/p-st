primitives
primReceive
	<pPrimitive: #primReceive plugin: #'IO.Socket' code: '
    char dir[8190];
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
	}
	if( s < 0 )
	{
		// no data availalbe in non-blocking mode, try again later
	}
	
	'>
	self pinocchioPrimitiveFailed.
	