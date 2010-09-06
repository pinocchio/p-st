benchmarks
benchRemoveKey
	1 to: dict size by: 73 do: [ :i|
		dict removeKey: (self key: i) ].