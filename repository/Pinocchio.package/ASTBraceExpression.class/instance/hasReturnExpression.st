accessing
hasReturnExpression
	self expressions do: [ :el | 
		el isReturnExpression 
			or: [ el hasReturnExpression ]
			ifTrue: [ ^ true ] ].
	^ false