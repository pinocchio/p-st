accessing
hasReturnExpression
	^ self statements anySatisfy: [ :el | 
		el isReturnExpression 
			or: [ el hasReturnExpression ]].