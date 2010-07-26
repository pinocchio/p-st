primitives
primAccept
	<pPrimitive: #primAccept plugin: #'IO.Socket' code: '
    int handle_current;
    socklen_t addrlen;
    struct sockaddr_in sin;

    /* wait for a client to talk to us */
    addrlen = sizeof(sin);
    assert(!((handle_current = accept(unwrap_int(${handle}), (struct sockaddr *) &sin, &addrlen)) == -1),
        fwprintf(stderr, L"Socket failed to accept"););

	make_nonblocking(handle_current);
	
    ^ new_IO_Socket_withHandle((SmallInt)wrap_int(handle_current));
	'>
	self pinocchioPrimitiveFailed.
	