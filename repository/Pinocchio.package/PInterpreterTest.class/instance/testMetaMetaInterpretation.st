running
testMetaMetaInterpretation
	| mci send messages |
	mci := PTestInterpreter new.
	send := PSend new: 0.
	send receiver: (PConstant new: self).
	messages := (OrderedCollection new)
		add: #testClassReference;
		add: #testClosure;
		add: #testSlot;
		add: #testSlotAssign;
		add: #testReturn;
		add: #testSelf;
		add: #testSend;
		add: #testSuper;
		add: #testVariable;
		add: #testVariableAssign;
		yourself.
	messages
		do:
			[ :msg | 
			"send inlineCache flush."
			send message: msg.
			send accept: mci ]