tests
testSetAdd
	| value |
	s size should = 0.
	1 to: 333 do: [ :index|
		value := index.
		s add: value.
		s size should = index.
		(s includes: value) should = true. 
	].
	1 to: 333 do: [ :index|
		value := index.
		s remove: value.
		s size should = (333 - index).
		(s includes: value) should = false. 
	].