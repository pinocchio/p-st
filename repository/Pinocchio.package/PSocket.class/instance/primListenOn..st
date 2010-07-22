primitives
primListenOn: aPort
	<pPrimitive: #primListenOn: plugin: #'IO.Socket' code: '
    struct sockaddr_in sin;

    memset(&sin, 0, sizeof(sin));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = INADDR_ANY;
    sin.sin_port = htons(((SmallInt)#{aPort})->value);

    /* bind the socket to the port number */
    assert(!(bind(unwrap_int(${handle}), (struct sockaddr *) &sin, sizeof(sin)) == -1),
        fwprintf(stderr, L"Socket failed to bind"););

    /* show that we are willing to listen */
    assert(!(listen(unwrap_int(${handle}), 5) == -1),
        fwprintf(stderr, L"Socket failed to listen"););

    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	