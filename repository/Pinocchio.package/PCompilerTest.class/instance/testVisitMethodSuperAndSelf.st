running
testVisitMethodSuperAndSelf
	| ast |
	parser := pparser method.
	ast := self ast: 'doIt' , String cr , ' self a + super b'.
	ast class should = PMethodClosure