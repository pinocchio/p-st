benchmarks
benchAtPutNew
	dict size to: self dictSize * 5 do: [ :i|
		dict at: (self key: i) ifAbsentPut: (self value: i)].