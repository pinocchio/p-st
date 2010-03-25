running
testVisitMethod
	| ast |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' 1 + 2.'.
	ast class should = PMethodClosure.
	ast := ast code.	"ast selector asSymbol should = #doIt."
	ast size should = 2.	" +; self"
	ast locals size should = 0.
	ast params size should = 0.
	self assureLastIsReturningSelf: ast