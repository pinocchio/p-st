enumerating
doTimes: aBlock
	"Normally compiled in-line, and therefore not overridable.
	Evaluate aBlock for each element of the interval (self to: stop by: 1)."

	| nextValue |
	nextValue := 1.
	[ nextValue <= self ]
		whileTrue:
			[ aBlock value. nextValue := nextValue + 1 ]