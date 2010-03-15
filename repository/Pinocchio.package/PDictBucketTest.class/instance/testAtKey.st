tests
testAtKey
	b addKey: #key1 value: 'value1'.
	b addKey: #key2 value: 'value2'.
	
	PFile stdout writeAll: (b atKey: #key1); lf.
	(b atKey: #key1) should = 'value1'.
	PFile stdout writeAll: (b atKey: #key2); lf.
	(b atKey: #key2) should = 'value2'.
	
	b addKey: #key1 value: 'nil'.
	b addKey: #key2 value: 'v'.
	(b atKey: #key1) should = 'nil'.
	(b atKey: #key2) should = 'v'.
	 