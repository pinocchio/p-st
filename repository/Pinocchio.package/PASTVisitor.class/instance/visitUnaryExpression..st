visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver )
		message: (PSymbol named: anASTUnaryExpression selector asString);
		arguments: (PArray new: 0)
