visitor
visitBinaryExpression: aBinaryExpression
	^ (self createSendTo: aBinaryExpression receiver sized: 1)
		message: aBinaryExpression selector;
		at: 1 put: (self visit: aBinaryExpression argument);
		yourself