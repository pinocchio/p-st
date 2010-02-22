test-basics
testCascadeSends
	| block result |
	block := [:receiver|
		receiver new
			a: 1;
			b: 2;
			c: receiver.
	].
	
	result := block value: StandardTestClass.
	result a should be = 1.
	result b should be = 2.
	result c should be = StandardTestClass.
	