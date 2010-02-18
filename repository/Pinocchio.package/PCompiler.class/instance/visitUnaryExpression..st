visitor
visitUnaryExpression: anASTUnaryExpression
	^ (self createSendTo: anASTUnaryExpression receiver )
		message: (anASTUnaryExpression selector asSymbol asPSymbol);
		arguments: (PArray new: 0)
