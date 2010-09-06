benchmarks
benchIncludesKey
	1 to: dict size * 2 do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].