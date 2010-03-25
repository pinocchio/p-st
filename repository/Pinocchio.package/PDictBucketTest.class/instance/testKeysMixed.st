tests
testKeysMixed
	| keys |
	b addKey: #key value: 'value1'.
	b addKey: 'key' value: 'value2'.
	keys := b keys.
	keys size should = 1.
	keys includes: #key.
	b addKey: 'key1' value: 'value3'.
	b addKey: #key1 value: 'value4'.
	keys := b keys.
	keys size should = 2.
	keys includes: #key.
	keys includes: #key1