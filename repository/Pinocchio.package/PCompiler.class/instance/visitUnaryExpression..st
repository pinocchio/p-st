visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver)
		message: (anASTUnaryExpression selectorSymbol);
		arguments: (PArray new: 0)
