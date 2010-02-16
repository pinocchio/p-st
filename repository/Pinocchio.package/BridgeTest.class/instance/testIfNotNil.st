test-basics
testIfNotNil
	| a |
	a := false.
	
	nil ifNotNil: [ a true].
	a should = false.
	
	1 ifNotNil: [:arg| a:= arg].
	a should = 1.
	
	a := 1.
	1 ifNotNil: [ :x | a := a + x ].
	a should = 2.