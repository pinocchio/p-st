primitives
primMillisecondClock
	<pPrimitive: #millisecondClock plugin: #'Chronology.Time' code: '
	struct timeval tv;
	gettimeofday(&tv, NULL);
	long seconds       = tv.tv_sec - start_timeval.tv_sec;
	long micro_seconds = (long)(tv.tv_usec - start_timeval.tv_usec);
	^wrap_int(seconds * 1000 + micro_seconds / 1000);
	'>
	self pinocchioPrimitiveFailed