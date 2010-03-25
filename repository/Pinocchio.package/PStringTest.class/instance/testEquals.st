testing
testEquals
	| a |
	'String' should = 'String'.
	a := 'String'.
	a should == a.
	'String' should = ('Str' , 'ing').
	'String' should not == ('Str' , 'ing').
	'String' should not = 'gnirtS'.
	'String' should be = #String.
	'String' should not be == #String