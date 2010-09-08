running
runProbe
	| time |
	target setUp.
	time := self currentMillis.
	target perform: selector.
	time := (self currentMillis) - time.
	target tearDown.
	
	probes add: (time / 1000.0).
	^ time.