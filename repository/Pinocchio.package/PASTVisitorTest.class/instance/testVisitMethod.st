running
testVisitMethod
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' 1 + 2.'.
	ast class should = PMethod.
	ast hasReturn should  = false.
	ast selector class should = PSymbol.
	ast selector asString should = 'doIt'.
	ast params class should = PArray.
	ast locals class should = PArray.
	ast size should = 2. " +; self"
	ast locals size should = 0.
	ast params size should = 0.
	self assureLastIsReturningSelf: ast