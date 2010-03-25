tests
testBodyElements
	[  ] value should be = nil.
	[ 1 ] value should be = 1.
	[ | a b |
	a := 2.
	a ] value should be = 2.
	[ | a b |
	a := 2.
	b := 3.
	a ] value should be = 2.
	[ | a b |
	a := 2.
	b := 3.
	b ] value should be = 3.
	[ | a b |
	a := 2.
	b := 3.
	a := b + a.
	a ] value should be = 5