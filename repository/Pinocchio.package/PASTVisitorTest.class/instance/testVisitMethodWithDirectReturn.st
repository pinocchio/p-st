running
testVisitMethodWithDirectReturn
	| ast block return returningBlock |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ true.'.

	ast class should = PMethod.
	ast hasReturn should = true.
	ast params class should = PArray.
	ast locals class should = PArray.
	ast size should = 1.  "true"
	ast first class should = PInternalVariable.