tests
testAtKey
	b addKey: #key1 value: 'value1'.
	b addKey: #key2 value: 'value2'.
	(b atKey: #key1) should be: 'value1'.
	(b atKey: 'key1') should be: 'value1'.
	(b atKey: #key2) should be: 'value2'.
	(b atKey: 'key2') should be: 'value2'.
	b addKey: #key1 value: 'nil'.
	b addKey: #key2 value: 'v'.
	(b atKey: #key1) should be: 'nil'.
	(b atKey: 'key1') should be: 'nil'.
	(b atKey: #key2) should be: 'v'.
	(b atKey: 'key2') should be: 'v'