private
normalize: i ticks: ticks base: base

	| tick quo rem |
	
	tick := ticks at: i.
	quo := tick quo: base.
	rem := tick rem: base.
	rem negative ifTrue: [ quo := quo - 1. rem := base + rem ].
	ticks at: (i-1) put: ((ticks at: i-1) + quo).
	ticks at: i put: rem
