benchmarking
benchMethod
	| string |
	string := PEGStringScanner on: 'a: b c: d
			<abc: 1 "bla"def: (2+2) ghi: (3 b)>
			<a: 4> "test"
			<boe>
			|x y z|
			1 + [ |a| a ] value: 3.
			^ 7 '.
	200 timesRepeat: [ methodParser parse: string ].