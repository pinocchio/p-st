primitives
primSocketRemotePort
	<pPrimitive: #primSocketRemotePort plugin: #'IO.Socket' code:'
	struct sockaddr_in saddr;

    /* --- TCP --- */
    if (getpeername(unwrap_int(${handle}), (struct sockaddr *)&saddr, sizeof(saddr))
        || (AF_INET != saddr.sin_family)) {
        ^wrap_int(0);
    }
    ^wrap_int(ntohs(saddr.sin_port));
	'>
	self pinocchioPrimitiveFailed.