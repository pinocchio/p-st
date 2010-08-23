running
runProbe
	| time |
	(target respondsTo: #setUp) ifTrue: [ target setUp ].
	time := self currentMillis.
	target perform: selector.
	time := (self currentMillis) - time.
	(target respondsTo: #tearDown) ifTrue: [ target tearDown ].
	
	time := (time / probeCount asFloat).
	probes add: time.
	^ time.