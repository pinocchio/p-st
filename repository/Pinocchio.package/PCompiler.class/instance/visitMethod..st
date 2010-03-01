visitor
visitMethod: aMethod 
	| block params locals body method hasReturn selector methodClosure |
	currentMethod := aMethod.
	currentInfo := self createPInfo.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	
	aMethod hasReturnExpression ifFalse: [
		body :=  self createNonReturningMethodBodyFor: aMethod.	
	] ifTrue: [
		body :=  self createReturningMethodBodyFor: aMethod.
	].

	selector := self selectorFor: aMethod.

	method := PMethod withAll: body.
	method
		params: (self acceptOnCollection: aMethod message parameters) asArray
		locals: (self acceptOnCollection: aMethod temporaries) asArray;
		annotations:  (self acceptOnCollection: aMethod annotations) asArray;
		info: self currentInfo.
		
	methodClosure := PMethodClosure new
							code: method;
							selector: selector.
	
	self popScope.
	^ methodClosure.