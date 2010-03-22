tests
testAtKey
	b addKey: #key1 value: 'value1'.
	b addKey: #key2 value: 'value2'.
	
	(b atKey: #key1) should = 'value1'.
	(b atKey: 'key1' ifAbsent: [ false ]) should = false.
	(b atKey: #key2) should = 'value2'.
	(b atKey: 'key2' ifAbsent: [ false ]) should = false.
	
	b addKey: #key1 value: 'nil'.
	b addKey: #key2 value: 'v'.
	(b atKey: #key1) should = 'nil'.
	(b atKey: 'key1' ifAbsent: [ false ]) should = false.
	(b atKey: #key2) should = 'v'.
	(b atKey: 'key2' ifAbsent: [ false ]) should = false.