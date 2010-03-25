running
testVisitMethodWithDirectReturn2
	| ast block return returningBlock |
	parser := scparser method.
	ast := self
		ast:
			'doIt' , String cr , '|a|' , String cr
				,
					' a := 1+2.
	^ true.'.
	ast class should = PMethodClosure.
	ast := ast code.
	ast size should = 2.	"1+2. true"
	ast last should beKindOf: PConstant