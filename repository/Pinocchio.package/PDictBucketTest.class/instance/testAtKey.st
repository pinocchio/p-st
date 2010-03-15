tests
testAtKey
	b addKey: #key1 value: 'value1'.
	b addKey: #key2 value: 'value2'.
	
	1 to: b size do: [ :i|
		PFile stderr writeAll: i asString; writeAll: ' = '; writeAll: (b at: i) asString; lf.
	].
	PFile stderr writeAll: (b atKey: #key1) asString.
	(b atKey: #key1) should = 'value1'.
	(b atKey: #key2) should = 'value2'.
	
	b addKey: #key1 value: 'nil'.
	b addKey: #key2 value: 'v'.
	(b atKey: #key1) should = 'nil'.
	(b atKey: #key2) should = 'v'.
	 