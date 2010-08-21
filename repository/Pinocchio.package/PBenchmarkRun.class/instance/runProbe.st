running
runProbe
	| time |
	time := self currentMillis.
	target perform: selector.
	time := (self currentMillis) - time.
	time := (time / probeCount asFloat).
	probes add: time.
	^ time.