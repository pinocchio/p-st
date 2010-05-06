testing
testEquals
	| i |
	42 should = 42.
	i := 42.
	i should == i.
	42 should = (21 + 21).
	42 should not == (21 + 21).
	42 should not = 24.