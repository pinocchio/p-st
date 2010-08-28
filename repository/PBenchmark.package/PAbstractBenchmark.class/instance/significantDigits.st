accessing
significantDigits
	| stdev |
	stdev := self stdev.
	stdev = 0 ifTrue: [ ^ 2].
	stdev >= 10 ifTrue: [ ^ 0].
	^ 1 - (stdev log floor)