visitor
visitMessageExpression: aMessageExpression
	| message arguments |
	message := self visit: aMessageExpression selector.
	arguments := self acceptOnCollection: aMessageExpression arguments.
	^ (self createSendTo: aMessageExpression receiver sized: arguments size)
			message: message;
			arguments: arguments
