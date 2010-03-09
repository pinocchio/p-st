testing
testKeys
	| d keys |
	d := PDictionary new.
	
	keys := d keys.
	keys size should = 0.
	
	d at: #bla put: 'bla'.
	keys := d keys.
	keys size should = 1.
	(keys includes: #bla) should = true.
	
	d at: #foo put: 'foo'.
	keys := d keys.
	keys size should = 2.
	(keys includes: #bla) should = true.
	(keys includes: #foo) should = true.