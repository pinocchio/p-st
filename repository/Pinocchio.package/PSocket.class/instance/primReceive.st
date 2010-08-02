primitives
primReceive
	<pPrimitive: #primReceive plugin: #'IO.Socket' code: '
    char dir[8190];
	int s;

    assert(!(  ( s =recv(unwrap_int(${handle}), dir, sizeof(dir), 0)) == -1),
        fwprintf(stderr, L"Socket failed to initialize"););

	fwprintf(stdout, L"Size: %i\n", s);	
    fwprintf(stdout, L"Read: %s\n", dir);
    ^ new_String_from_charp(&dir[0]);
	'>
	self pinocchioPrimitiveFailed.
	