benchmarks
benchAtPutExisting
	1 to: self dictSize do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].