running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock send callecBody |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , 'a ifTrue: [^ 1].'.

	ast class should = PMethod.
	ast depth should = 0.
	ast params size should = 1.
	ast locals size should = 0.
	ast size should = 1. "callec on: [return. self]"
	send := ast first.
	send class should = PSend.
	send message should = #on:.
	send receiver should beKindOf: PClassReference.
	callecBody := send arguments at: 1.
	callecBody class should = PBlock.
	callecBody depth should = 1.