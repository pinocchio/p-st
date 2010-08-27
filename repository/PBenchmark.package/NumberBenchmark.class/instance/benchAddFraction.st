as yet unclassified
benchAddFraction
	| f |
	f := 1/10.
	1 to: numbers size do: [ :index|
		(numbers at: index) + f].