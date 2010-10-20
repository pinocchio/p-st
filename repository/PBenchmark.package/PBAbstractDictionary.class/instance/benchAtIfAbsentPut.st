benchmarks
benchAtIfAbsentPut
	1 to: self dictSize * 2 do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].