visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver )
		message: (anASTUnaryExpression selectorSymbol asPSymbol);
		arguments: (PArray new: 0)
