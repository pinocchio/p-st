running
run
	self warn: self selector.
	self probeCount timesRepeat: [ self runProbe ].
	self warn: self asString.