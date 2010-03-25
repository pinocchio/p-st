tests
testIncludes
	(s includes: #v) should = false.
	s add: #v.
	(s includes: #v) should = true.
	(s includes: 'v') should = true.
	s add: '_1_'.
	(s includes: '_1_') should = true.
	(s includes: #'_1_') should = true