convenience
createSymbol: anObject
	anObject isString 
		ifFalse: [ ^ anObject ].
	^ ASTSymbol named: anObject