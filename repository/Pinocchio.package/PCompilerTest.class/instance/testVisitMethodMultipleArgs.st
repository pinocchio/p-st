running
testVisitMethodMultipleArgs
	| ast |
	parser := pparser method.
	ast := self ast: 'doIt: a withA: b withB: c withC: d' , String cr , ' a + 2.'.
	ast class should = PMethodClosure.
	ast := ast code.	"ast selector asSymbol should = #doIt:withA:withB:withC:."
	ast locals size should = 0.
	ast params size should = 4.
	ast size should = (1 + 1).
	(ast params at: 1) class should = PVariable.
	ast last class should = PSelf.
	self assureLastIsReturningSelf: ast