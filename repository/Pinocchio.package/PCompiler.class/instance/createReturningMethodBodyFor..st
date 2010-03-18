method
createReturningMethodBodyFor: aMethod
	| body callec |
	"TODO copy here?"
	body := aMethod statements.
	body last isReturnExpression ifFalse: [
		body add: ASTSelf new.
	] ifTrue: [
		body at: body size put: body last expression.
		body hasReturnExpression ifFalse: [
			^ (self acceptOnCollection: body) asArray
		]
	].
	
	"Now wrap all in a callec"
	callec := (PSend new: 1)
			receiver: (self visitVariable: (ASTVariable named: #PContinue));
			message: #on:;
			at: 1 put: (self createCallecBodyFor: aMethod);
			yourself.
	
	^  PArray with: callec