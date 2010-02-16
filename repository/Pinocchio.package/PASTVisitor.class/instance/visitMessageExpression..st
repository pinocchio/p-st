visitor
visitMessageExpression: aMessageExpression
	| message |
	message := self visit: aMessageExpression selector.
	^ (self createSendTo: aMessageExpression receiver)
			message: message;
			arguments: (self acceptOnCollection: aMessageExpression arguments) asPArray
