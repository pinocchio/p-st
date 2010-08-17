as yet unclassified
significantDigits
	| stdev |
	stdev := self stdev.
	stdev >= 10 ifTrue: [ ^ 0].
	^ 1 - (stdev log floor)