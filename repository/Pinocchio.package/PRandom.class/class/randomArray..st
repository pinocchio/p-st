as yet unclassified
randomArray: size
	| a i1 i2 v1 v2 |
	a := Array new: size.
	1 to: size do: [ :i| a at: i put: i ].
	1 to: size do: [ :i|
		i1 := 1 + (self instance nextInt: (size-1)).
		i2 := i \\ size + 1.
		v1 := a at: i1.
		v2 := a at: i2.
		a at: i1 put: v2.
		a at: i2 put: v1.].
	^ a.