benchmarks
benchAtPutNew
	dict size to: dict size * 5 do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].