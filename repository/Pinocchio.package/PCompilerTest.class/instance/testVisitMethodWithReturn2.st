running
testVisitMethodWithReturn2
	| ast block return body send |
	parser := pparser method.
	ast := self ast: 'doIt' , String cr , '|a b c|' , String cr , ' a := b+c. ^ self foo: a bar: b baz: c.'.
	ast class should = PMethodClosure.
	ast := ast code.
	ast size should = 2.	"assignment. return"
	ast locals size should = 3.
	ast params size should = 0.
	send := ast last.
	send class should = PSend.
	send receiver class = PSelf.
	send message asSymbol should = #foo:bar:baz: