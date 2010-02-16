visitor
visitBinaryExpression: aBinaryExpression
	^ (self createSendTo: aBinaryExpression receiver)
			message: (PSymbol named: aBinaryExpression selector asString);
			arguments: (self visit: aBinaryExpression argument) asPArray.