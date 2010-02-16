running
testVisitBinaryMethod
	| ast |
	parser := scparser method.
	ast := self ast: '= other 
	^ self name = other name.'.
	ast selector class should = PInternalSymbol.
	ast class should = PMethod.
	