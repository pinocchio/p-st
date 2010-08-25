primitives
primSecondsClock
	<pPrimitive: #primSecondsClock plugin: #'Chronology.Time' code: '
    long seconds;

    seconds = (long)time(NULL);

    seconds += 2177452800;

	^wrap_int(seconds);
	'>
	self pinocchioPrimitiveFailed.