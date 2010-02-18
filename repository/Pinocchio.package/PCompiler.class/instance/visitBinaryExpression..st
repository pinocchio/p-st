visitor
visitBinaryExpression: aBinaryExpression
	^ (self createSendTo: aBinaryExpression receiver sized: 1)
			message: (PSymbol named: aBinaryExpression selector asString);
			at: 1 put: (self visit: aBinaryExpression argument);
			yourself