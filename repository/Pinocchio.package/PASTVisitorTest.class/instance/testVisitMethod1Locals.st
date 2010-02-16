running
testVisitMethod1Locals
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a|' , String cr , ' a + 2.'.
	ast class should = PMethod.
	ast hasReturn should = false.
	ast params class should = PArray.
	ast params size should = 0.
	ast locals class should = PArray.
	ast size should = (1+1).
	ast locals size should = 1.
	ast params size should = 0.
	self assureLastIsReturningSelf: ast