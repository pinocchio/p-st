tests
testContinuation
	| a t c |
	t := 3.
	a := 1 + (PContinuation on: [ :cont | c := cont. 2 ]).
	a should = t.
	a = 3 ifTrue: [ t := 5. c continue: 4 ].
	a = 5 ifTrue: [ t := 7. c continue: 6 ].
	a should = 7.