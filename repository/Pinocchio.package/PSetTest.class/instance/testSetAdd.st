tests
testSetAdd
	| value |
	s size should = 0.
	1 to: 333 do: [ :index|
		value := '_', index asString, '_'.
		s add: value.
		s size should = index.
		(s includes: value) should = true. 
	].
	1 to: 333 do: [ :index|
		value := '_', index asString, '_'.
		s remove: value.
		s size should = (333 - index).
		(s includes: value) should = false. 
	].