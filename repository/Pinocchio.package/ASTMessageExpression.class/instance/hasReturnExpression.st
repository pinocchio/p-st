accessing
hasReturnExpression
	^ self arguments anySatisfy: [ :el | 
		el isReturnExpression 
			or: [ el hasReturnExpression ]].