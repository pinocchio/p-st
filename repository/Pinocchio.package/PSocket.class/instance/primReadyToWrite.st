primitives
primReadyToWrite
	<pPrimitive: #primReadyToWrite plugin: #'IO.Socket' code: '	
    int n, listener, maxfd;
    fd_set readset, writeset, exset;
    struct timeval timeout;

    listener = unwrap_int(${handle});
    maxfd = listener;

    FD_ZERO(&readset);
    FD_ZERO(&writeset);
    FD_ZERO(&exset);

    FD_SET(listener, &writeset);

    timeout.tv_sec = 0;
    timeout.tv_usec = 1000*10;

    n = select(maxfd+1, &readset, &writeset, &exset, &timeout);

    if (FD_ISSET(listener, &writeset)) {
        ^ true;
    }
    else
    {
        ^ false;
    }
	'>
	self pinocchioPrimitiveFailed.
	