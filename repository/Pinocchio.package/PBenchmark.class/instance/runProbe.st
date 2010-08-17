as yet unclassified
runProbe
	| time |
	time := self currentMillis.
	self benchmark.
	time := (self currentMillis) - time.
	time := (time / probeCount asFloat).
	probes add: time.
	^ time.