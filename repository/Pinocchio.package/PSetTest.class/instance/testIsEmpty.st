tests
testIsEmpty
	s isEmpty should = true.
	s add: #val.
	s isEmpty should = false.
	s remove: #val.
	s isEmpty should = true