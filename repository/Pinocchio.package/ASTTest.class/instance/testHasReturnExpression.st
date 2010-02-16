testing
testHasReturnExpression
	parser := scparser method.
	(self ast: 'method' , String cr , '^ 1') hasReturnExpression should be true.
	(self ast: 'method' , String cr , '1') hasReturnExpression should not be true.
	(self ast: 'method' , String cr , 'true ifFalse: [^ true]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , 'true ifFalse: [ 2 ]') hasReturnExpression should not be true.
	(self ast: 'method' , String cr , 'true ifFalse: [^ true] ifTrue: [ ^ 2]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , 'self isNil ifFalse: [^ true]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , '[true] whileTrue: [^ true] doBo: 1') hasReturnExpression should be true.