running
runProbe
	| time |
	target setUp.
	time := self currentMillis.
	target perform: selector.
	time := (self currentMillis) - time.
	target tearDown.
	
	time := (time / probeCount asFloat).
	probes add: time.
	^ time.