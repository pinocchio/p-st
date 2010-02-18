visitor
visitBinaryExpression: aBinaryExpression
	^ (self createSendTo: aBinaryExpression receiver sized: 1)
			message: (aBinaryExpression selectorSymbol asPObject);
			at: 1 put: (self visit: aBinaryExpression argument);
			yourself