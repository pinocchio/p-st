primitives
primReceive
	<pPrimitive: #primReceive plugin: #'IO.Socket' code: '
    char dir[8190];
	
    assert(!(recv(unwrap_int(${handle}), dir, sizeof(dir), 0) == -1),
        fwprintf(stderr, L"Socket failed to initialize"););
		
    fwprintf(stdout, L"Read: %s\n", dir);
    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	