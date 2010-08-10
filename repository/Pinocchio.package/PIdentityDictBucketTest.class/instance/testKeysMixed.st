tests
testKeysMixed
	| keys |
	b addKey: #key value: 'value1'.
	b addKey: #key value: 'value2'.
	b addKey: 'key' value: 'value3'.
	b addKey: 'key' value: 'value4'.
	keys := b keys.
	keys size should = 2.
	keys includes: #key.
	keys includes: 'key'.
	b addKey: #key1 value: 'value1'.
	keys := b keys.
	keys size should = 3.
	keys includes: #key.
	keys includes: #key1.
	keys includes: 'key'