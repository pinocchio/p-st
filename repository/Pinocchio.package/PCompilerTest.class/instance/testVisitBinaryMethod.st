running
testVisitBinaryMethod
	| ast |
	parser := scparser method.
	ast := self ast: '= other 
	^ self name = other name.'.
	ast class should = PMethodClosure.
	