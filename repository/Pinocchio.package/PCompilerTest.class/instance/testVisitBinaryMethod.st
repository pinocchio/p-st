running
testVisitBinaryMethod
	| ast |
	parser := pparser method.
	ast := self
		ast:
			'= other 
	^ self name = other name.'.
	ast class should = PMethodClosure