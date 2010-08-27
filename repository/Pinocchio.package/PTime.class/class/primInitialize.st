initialize-release
primInitialize
	<pPrimitive: #primInitialize plugin: #'Chronology.Time' code: '
	gettimeofday(&start_timeval, NULL);
	'>
	self pinocchioPrimitiveFailed.