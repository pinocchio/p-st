running
runProbe
	| time |
	self setUpProbe.
	time := self currentMillis.
	target perform: selector.
	time := (self currentMillis) - time.
	self tearDownProbe.
	
	probes add: (time / 1000.0).
	^ time.