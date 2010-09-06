as yet unclassified
benchConcatenation1
	| a b |
	a := 'a'.
	b := '1'.
	2048 timesRepeat: [ 
		a := a,b.].