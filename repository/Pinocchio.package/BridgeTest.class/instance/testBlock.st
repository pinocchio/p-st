test-basics
testBlock
	| b |
	b := [].
	b numArgs should = 0.
	
	b := [ :a| a].
	b numArgs should = 1.
	(b value: #abc) should be = #abc.
	
	b := [ :a| |c| a].
	b numArgs should = 1.
	(b value: #abc) should be = #abc.
	
	b := [ :a :c| |d| c].
	b numArgs should = 2.
	
	