accessing
average 
	| avg |
	avg := self probes average.
	base ifNotNil: [ avg := avg - base average ].
	^ avg