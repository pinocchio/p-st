statistics
stdev 
	"TODO: provide different means depending on the probe count"
	| stdev |
	stdev := self probes stdev.
	base ifNotNil: [ stdev := stdev + base stdev ].
	^ stdev.