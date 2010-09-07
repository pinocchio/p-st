visitor
visitMessageExpression: aMessageExpression
	| arguments |
	arguments := self acceptOnCollection: aMessageExpression arguments.
	^ (self createSendTo: aMessageExpression receiver sized: arguments size)
		message: aMessageExpression selector;
		arguments: arguments