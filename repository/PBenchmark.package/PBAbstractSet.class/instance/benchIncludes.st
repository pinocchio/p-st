benchmark
benchIncludes
	1 to: set size * 2 do: [ :i|
		set includes: (self value: i) ].