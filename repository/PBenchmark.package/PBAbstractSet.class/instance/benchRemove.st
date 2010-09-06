benchmark
benchRemove
	1 to: set size by: 90 do: [ :i| 
		set remove: (self value: i) ].