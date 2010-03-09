tests
testIncludes
	(s includes: #v) should = false.
	s add: #v.
	(s includes: #v) should = true.
	(s includes: 'v') should = true.