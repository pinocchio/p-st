visitor
visitMethod: aMethod
	| body method selector methodClosure |
	currentMethod := aMethod.
	self pushScope.
	scope declareAll: aMethod message parameters.
	scope declareAll: aMethod temporaries.
	aMethod hasReturnExpression
		ifFalse: [ body := self createNonReturningMethodBodyFor: aMethod ]
		ifTrue: [ body := self createReturningMethodBodyFor: aMethod ].
	selector := self selectorFor: aMethod.
	method := self createMethod: aMethod with: body.
	method
		params: (self acceptOnCollection: aMethod message parameters) asArray
		locals: (self acceptOnCollection: aMethod temporaries) asArray;
		annotations: (self acceptOnCollection: aMethod annotations) asArray;
		info: self createPInfo.
	methodClosure := (PMethodClosure new)
		code: method;
		host: pinocchioClass;
		selector: selector.
	self popScope.
	self compileThreadedMethod: method.
	^ methodClosure