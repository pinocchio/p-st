running
testVisitMethodSuperAndSelf
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' self a + super b'.
	ast hasReturn should = false.
	ast class should = PMethod.