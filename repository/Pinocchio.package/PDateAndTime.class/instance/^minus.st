ansi protocol
- operand
	"operand conforms to protocol DateAndTime or protocol Duration"

	^ (operand respondsTo: #asDateAndTime)
		ifTrue: 
			[ | lticks rticks |
			lticks := self asLocal ticks.
	
			rticks := operand asDateAndTime asLocal ticks.
				PDuration seconds:
					(PChronologyConstants secondsInDay *(lticks first - rticks first)) +
					(lticks second - rticks second)]
	
		ifFalse:
			[ self + (operand negated) ].