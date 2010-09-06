as yet unclassified
benchConcatenation5
	| a b |
	a := 'a'.
	b := '12345'.
	2048 timesRepeat: [ 
		a := a,b.].