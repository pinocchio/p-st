testing
hasReturnExpression
	^ receiver ifNil: [ false ] ifNotNil: [ receiver hasReturnExpression ]