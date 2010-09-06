as yet unclassified
benchAtIfAbsentPut
	1 to: dict size * 2 do: [ :i|
		dict at: i ifAbsentPut: i].