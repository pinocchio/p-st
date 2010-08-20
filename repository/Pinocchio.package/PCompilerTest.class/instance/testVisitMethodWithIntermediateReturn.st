running
testVisitMethodWithIntermediateReturn
	| ast block return returningBlock send callecBody pclass root type classReference |
	parser := pparser method.
	parser := pparser method.
	pclass := PClass new.
	root := PRootPackage new.
	type := root ensurePackageNamed: 'Type'.
	classReference := type ensureClassReference: #PCallec.
	classReference ensurePinocchioClass: pclass.
	pclass package: type.
	visitor pclass: pclass.
	ast := self ast: 'doIt: a' , String cr , 'a ifTrue: [^ 1].'.
	ast class should = PMethodClosure.
	ast := ast code.
	ast depth should = 0.
	ast params size should = 1.
	ast locals size should = 0.
	ast size should = 1.	"callec on: [return. self]"
	send := ast first.
	send class should = PSend.
	send message should = #on:.
	send receiver should beKindOf: PClassReference.
	callecBody := send arguments at: 1.
	callecBody class should = PBlock