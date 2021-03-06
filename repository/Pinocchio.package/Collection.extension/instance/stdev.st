*Pinocchio
stdev
	| avg sample sum |
	avg := self average asFloat.
	"see comment in self sum"
	sample := self anyOne.
	sum := self inject: sample into: [:accum :each | accum + (each - avg) squared].
	sum := sum - sample.
	sum == 0 ifTrue: [ ^  0]. 
	^ (sum / (self size - 1)) sqrt