primitives
primInit
	<pPrimitive: #primInit plugin: #'IO.Socket' code: '
    int handle;
    assert(!((handle = socket(AF_INET, SOCK_STREAM, 0)) == -1),
        fwprintf(stderr, L"Socket failed to initialize"););
		
    ${handle} = wrap_int(handle);
    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	