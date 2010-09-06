benchmarks
benchIncludes
	1 to: dict size * 2 by: 73 do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].