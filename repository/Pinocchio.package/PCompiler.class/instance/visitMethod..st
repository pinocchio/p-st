visitor
visitMethod: aMethod 
	| block params locals body method hasReturn selector |
	currentMethod := aMethod.
	currentInfo := self createPInfo.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	
	hasReturn := aMethod hasReturnExpression.
	
	aMethod hasReturnExpression ifFalse: [
		body :=  self createNonReturningMethodBodyFor: aMethod.	
	] ifTrue: [
		body :=  self createReturningMethodBodyFor: aMethod.
	].

	selector := self selectorFor: aMethod.

	method := PMethod withAll: body.
	method selector: selector;
		params: (self acceptOnCollection: aMethod message parameters) asArray;
		locals: (self acceptOnCollection: aMethod temporaries) asArray;
		annotations:  (self acceptOnCollection: aMethod annotations) asArray;
		hasReturn: hasReturn;
		info: self currentInfo.
	
	self popScope.
	^ method.