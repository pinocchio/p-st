tests
testContinue
	| a c |
	c := [ :arg | PContinue on: [ :cont | cont escape: 5. arg ]].
	a := c value: 10.
	a should = 5.