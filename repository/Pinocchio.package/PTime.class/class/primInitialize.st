initialize-release
primInitialize
	<pPrimitive: #initialize plugin: #'Chronology.Time' code: '
	gettimeofday(&start_timeval, NULL);
	'>
	self pinocchioPrimitiveFailed