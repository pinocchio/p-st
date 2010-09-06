benchmarks
benchAtPutExisting
	1 to: dict size do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].