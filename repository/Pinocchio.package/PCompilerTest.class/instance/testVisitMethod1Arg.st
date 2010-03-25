running
testVisitMethod1Arg
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , ' a + 2.'.
	ast class should = PMethodClosure.
	ast := ast code.	"ast selector asSymbol should = #doIt:."
	ast locals size should = 0.
	ast params size should = 1.
	ast size should = (1 + 1).
	(ast params at: 1) class should = PVariable.
	self assureLastIsReturningSelf: ast