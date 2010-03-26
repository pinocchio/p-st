tests
testIncludesMixed
	(b includes: #key) should = false.
	b add: #key.
	(b includes: #key) should = true.
	(b includes: 'key') should = false.
	(b includes: #key2) should = false.
	b add: 'key2'.
	(b includes: #key) should = true.
	(b includes: 'key') should = false.
	"(b includes: #key2) should = false."
	"PDebugger interpret: ["
		PDebugger interpret:
			[ (b includes: 'key2') should = true ].
	"]"