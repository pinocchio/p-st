visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver)
		message: (anASTUnaryExpression selectorSymbol asPObject);
		arguments: (PArray new: 0)
