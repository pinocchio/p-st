running
testVisitMethodWithReturnSimpleCall
	| ast return body send |
	parser := scparser method.
	ast := self ast: 'doIt' , String cr , ' ^ self foo'.
	ast class should = PMethod.
	ast locals size should = 0.
	ast params size should = 0.
	
	ast size should = 1. "Just a send: self foo"
	send := ast first.
	send class should = PSend.
	send receiver class should = PSelf.
	send message asSymbol should = #foo 
	
	
	
	