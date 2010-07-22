primitives
primRead
	<pPrimitive: #primRead plugin: #'IO.Socket' code: '	
    char buffer[256];
    bzero(buffer, 256);

    assert(!(read(unwrap_int(${handle}), buffer, 255) == -1),
        fwprintf(stderr, L"Socket failed to read"););

    fwprintf(stdout, L"Read: %s\n", buffer);

    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	