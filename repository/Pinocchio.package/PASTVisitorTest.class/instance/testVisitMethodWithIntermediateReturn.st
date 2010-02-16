running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock send callecBody |
	parser := scparser method.
	ast := self ast: 'doIt: a' , String cr , 'a ifTrue: [^ 1].'.

	ast class should = PMethod.
	ast hasReturn should = true.
	ast depth should = 0.
	ast params class should = PArray.
	ast locals class should = PArray.
	ast size should = 1. "callec on: [return. self]"
	send := ast first.
	send class should = PSend.
	send message asString should = 'on:'.
	send receiver class should = PInternalVariable.
	callecBody := send arguments first.
	callecBody class should = PBlock.
	callecBody depth should = 1.