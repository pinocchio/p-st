running
testVisitMethod1Arg
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , ' a + 2.'.
	ast class should = PMethod.
	ast selector class should = PSymbol.
	ast selector asString should = 'doIt:'.
	ast params class should = PArray.
	ast locals class should = PArray.
	ast locals size should = 0.
	ast params size should = 1.
	ast hasReturn should = false.
	ast size should = (1+1).
	(ast params at: 1) class should = PLocalVariable.
	
	self assureLastIsReturningSelf: ast