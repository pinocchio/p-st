initialize-release
between: start and: stop
	^ self new
		start: (start min: stop);
		stop: (start max: stop)