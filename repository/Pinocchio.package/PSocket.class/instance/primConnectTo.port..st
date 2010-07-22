primitives
primConnectTo: aHostname port: aPort
	<pPrimitive: #primConnectTo:port: plugin: #'IO.Socket' code: '
    struct sockaddr_in sin;
    struct hostent * server;

    server = gethostbyname(unicode_to_ascii(((Symbol)#{aHostname})->value));

    memset(&sin, 0, sizeof(sin));
    sin.sin_family = AF_INET;
    sin.sin_port = htons(((SmallInt)#{aPort})->value);

    bcopy((char *)server->h_addr,
        (char *)&sin.sin_addr.s_addr,
        server->h_length);

    assert(!(connect(unwrap_int(${handle}), (struct sockaddr *) &sin, sizeof(sin)) == -1),
        fwprintf(stderr, L"Socket failed to connect"););
		
    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	