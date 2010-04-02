running
testIsValidMode
	(p isValidMode: #r) should = true.
	(p isValidMode: #w) should = true.
	(p isValidMode: #rw) should = true.
	(p isValidMode: #'r+') should = true.
	(p isValidMode: #'wr') should = false.