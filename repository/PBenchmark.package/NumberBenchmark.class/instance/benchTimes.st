as yet unclassified
benchTimes
	| a |
	a := numbers at: 1.
	1 to: numbers size do: [ :index|
		a * (numbers at: index)].