benchmark
benchAddNew
	set size to: set size * 5 by: 90 do: [ :i|
		set add: (self value: i) ].