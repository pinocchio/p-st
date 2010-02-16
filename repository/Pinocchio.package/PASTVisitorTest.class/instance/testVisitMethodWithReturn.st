running
testVisitMethodWithReturn
	| ast block return body send |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' ^ self foo: a bar: b baz: c.'.
	ast class should = PMethod.
	ast params class should = PArray.
	ast locals class should = PArray.
	ast hasReturn should = true.
	
	ast size should = 1. "only a send at the last position"
	ast locals size should = 3.
	ast params size should = 0.
	send := ast first.
	send class should = PSend.
	send receiver class = PSelf.
	send message asSymbol should = #foo:bar:baz:
	