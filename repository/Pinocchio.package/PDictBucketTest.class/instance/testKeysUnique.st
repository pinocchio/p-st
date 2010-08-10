tests
testKeysUnique
	| keys |
	b addKey: #key value: 'value'.
	keys := b keys.
	keys size should = 1.
	keys includes: #key.
	b addKey: #key1 value: 'value1'.
	keys := b keys.
	keys size should = 2.
	keys includes: #key.
	keys includes: #key1