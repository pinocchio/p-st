testing
hasReturnExpression
	^ (receiver
			ifNil: [ false ]
			ifNotNil: [ receiver hasReturnExpression ])
				or: [ self arguments anySatisfy: #hasReturnExpression ]