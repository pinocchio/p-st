primitives
primSocketRemotePort
	<pPrimitive: #primSocketRemotePort plugin: #'IO.Socket' code:'
    struct sockaddr_in sin;
    socklen_t addrlen;

    /* --- TCP --- */
    addrlen = sizeof(sin);
    if (getpeername(unwrap_int(${handle}), (struct sockaddr *)&sin,  &addrlen)
        || (AF_INET != sin.sin_family)) {
        ^wrap_int(0);
    }
    ^wrap_int(ntohs(sin.sin_port));
	'>
	self pinocchioPrimitiveFailed.