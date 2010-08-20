running
testVisitMethodWithDirectReturn
	| ast block return returningBlock |
	parser := pparser method.
	ast := self ast: 'doIt' , String cr , ' ^ true.'.
	ast class should = PMethodClosure.
	ast := ast code.
	ast size should = 1.	"true"
	ast first should beKindOf: PConstant