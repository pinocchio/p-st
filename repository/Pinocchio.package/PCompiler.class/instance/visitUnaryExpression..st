visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver)
		message: anASTUnaryExpression selector;
		arguments: (PArray new: 0)